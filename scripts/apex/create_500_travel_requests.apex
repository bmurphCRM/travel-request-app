// ── Query Users ────────────────────────────────────────────────────────────
List<User> users = [
    SELECT Id, FirstName, LastName
    FROM User
    WHERE IsActive = true
      AND UserType = 'Standard'
    ORDER BY LastName
    LIMIT 50
];
if (users.isEmpty()) {
    System.debug('No active standard users found. Aborting.');
    return;
}

// ── Query Departments ──────────────────────────────────────────────────────
Map<String, Id> deptMap = new Map<String, Id>();
for (Department__c d : [SELECT Id, Name FROM Department__c LIMIT 20]) {
    deptMap.put(d.Name, d.Id);
}

List<String> deptNames = new List<String>{
    'Sales', 'Engineering', 'Marketing', 'Finance', 'Customer Success',
    'Legal', 'Information Technology', 'Human Resources', 'Operations', 'Research Development'
};

// Remove any departments not in the org
List<String> availableDepts = new List<String>();
for (String dn : deptNames) {
    if (deptMap.containsKey(dn)) availableDepts.add(dn);
}
if (availableDepts.isEmpty()) {
    System.debug('No departments found. Aborting.');
    return;
}

// ── Reference Data ─────────────────────────────────────────────────────────
List<String> domesticCities = new List<String>{
    'New York, NY', 'San Francisco, CA', 'Chicago, IL', 'Austin, TX',
    'Seattle, WA', 'Denver, CO', 'Dallas, TX', 'Boston, MA',
    'Atlanta, GA', 'Miami, FL', 'Las Vegas, NV', 'Nashville, TN',
    'Portland, OR', 'Phoenix, AZ', 'San Diego, CA', 'Minneapolis, MN',
    'Detroit, MI', 'Charlotte, NC', 'Philadelphia, PA', 'Washington, DC'
};

List<String> intlCities = new List<String>{
    'London, UK', 'Tokyo, Japan', 'Paris, France', 'Sydney, Australia',
    'Toronto, Canada', 'Singapore', 'Frankfurt, Germany', 'Amsterdam, Netherlands',
    'Dublin, Ireland', 'Mexico City, Mexico', 'São Paulo, Brazil', 'Dubai, UAE',
    'Hong Kong', 'Barcelona, Spain', 'Stockholm, Sweden'
};

List<String> purposes = new List<String>{
    'Annual Sales Conference and partner networking event.',
    'Engineering leadership summit and product roadmap planning.',
    'International digital marketing conference and brand strategy workshops.',
    'Financial compliance training and regulatory update seminar.',
    'Customer success workshop and key account review meetings.',
    'Corporate legal conference on data privacy and compliance.',
    'Cloud infrastructure summit and technology leadership sessions.',
    'HR leadership retreat focused on talent acquisition and retention strategies.',
    'Quarterly operations review and supply chain optimization planning.',
    'R&D innovation conference and joint research partnership meetings.',
    'Executive business development meeting with strategic partners.',
    'Product launch event and customer demonstration sessions.',
    'Industry trade show and competitive intelligence gathering.',
    'Regional team training and certification program.',
    'Board meeting and investor relations presentation.',
    'Client onboarding sessions and implementation kickoff.',
    'Vendor negotiation and contract renewal meetings.',
    'Technical workshop and hands-on lab training.',
    'Global team offsite for strategic planning.',
    'Partnership summit and channel development sessions.'
};

List<String> statuses = new List<String>{
    'Approved', 'Approved', 'Approved', 'Approved', 'Approved',  // ~40% Approved
    'Submitted', 'Submitted', 'Submitted',                        // ~24% Submitted
    'Pending Approval', 'Pending Approval', 'Pending Approval',   // ~24% Pending
    'Draft',                                                       // ~6% Draft
    'Rejected'                                                     // ~6% Rejected
};

// ── Generate 500 Travel Requests ───────────────────────────────────────────
List<Travel_Request__c> requests = new List<Travel_Request__c>();
Integer totalRecords = 500;
Integer numUsers = users.size();
Integer numDepts = availableDepts.size();
Integer numDomCities = domesticCities.size();
Integer numIntlCities = intlCities.size();
Integer numPurposes = purposes.size();
Integer numStatuses = statuses.size();

// Spread dates over 18 months: -12 months to +6 months from today
Date baseDate = Date.today();

for (Integer i = 0; i < totalRecords; i++) {
    // Rotate/vary across users
    User u = users[Math.mod(i * 7 + 3, numUsers)];

    // Vary department
    String deptName = availableDepts[Math.mod(i * 3 + 1, numDepts)];

    // Trip type: ~70% domestic, ~30% international
    String tripType = (Math.mod(i, 10) < 7) ? 'Domestic' : 'International';

    // City
    String city;
    if (tripType == 'Domestic') {
        city = domesticCities[Math.mod(i * 5 + 2, numDomCities)];
    } else {
        city = intlCities[Math.mod(i * 4 + 1, numIntlCities)];
    }

    // Date spread: offset from -540 days to +180 days in steps
    // Use i to spread evenly across the 18-month range
    Integer dayOffset = -540 + Math.mod(i * 13 + 7, 720); // -540 to +180
    Integer duration = (tripType == 'International') ? (3 + Math.mod(i, 5)) : (1 + Math.mod(i, 4));
    Date startDate = baseDate.addDays(dayOffset);
    Date endDate = startDate.addDays(duration);

    // Status — past trips lean Approved/Rejected, future lean Submitted/Pending/Draft
    String status;
    if (dayOffset < -30) {
        // Past trips: mostly Approved or Rejected
        Integer pastIdx = Math.mod(i, 8);
        if (pastIdx < 6) status = 'Approved';
        else status = 'Rejected';
    } else if (dayOffset < 0) {
        // Recent past: mix
        status = statuses[Math.mod(i * 2 + 5, numStatuses)];
    } else {
        // Future: Submitted, Pending Approval, or Draft
        Integer futureIdx = Math.mod(i, 5);
        if (futureIdx < 2) status = 'Submitted';
        else if (futureIdx < 4) status = 'Pending Approval';
        else status = 'Draft';
    }

    String purpose = purposes[Math.mod(i * 6 + 3, numPurposes)];

    requests.add(new Travel_Request__c(
        OwnerId             = u.Id,
        Department__c       = deptMap.get(deptName),
        Trip_Start_Date__c  = startDate,
        Trip_End_Date__c    = endDate,
        Destination_City__c = city,
        Business_Purpose__c = purpose,
        Trip_Type__c        = tripType,
        Status__c           = status
    ));
}

insert requests;
System.debug('Inserted ' + requests.size() + ' Travel Requests.');

// ── Generate Line Items ────────────────────────────────────────────────────
// Expense type pools with (estimated base cost, variance %)
// [type, minEstimate, maxEstimate]
List<List<Object>> expenseTypes = new List<List<Object>>{
    new List<Object>{'Airfare', 250, 3500},
    new List<Object>{'Hotel', 150, 2500},
    new List<Object>{'Food', 50, 600},
    new List<Object>{'Ground Transportation', 30, 350},
    new List<Object>{'Conference Fees', 200, 3000},
    new List<Object>{'Parking', 20, 150},
    new List<Object>{'Miscellaneous', 25, 300}
};

List<List<Object>> domesticExpenses = new List<List<Object>>{
    new List<Object>{'Airfare', 200, 650},
    new List<Object>{'Hotel', 120, 900},
    new List<Object>{'Food', 50, 250},
    new List<Object>{'Ground Transportation', 30, 180},
    new List<Object>{'Parking', 20, 120}
};

List<List<Object>> intlExpenses = new List<List<Object>>{
    new List<Object>{'Airfare', 800, 4000},
    new List<Object>{'Hotel', 500, 2500},
    new List<Object>{'Food', 150, 700},
    new List<Object>{'Ground Transportation', 80, 400},
    new List<Object>{'Conference Fees', 500, 3500},
    new List<Object>{'Miscellaneous', 50, 400}
};

List<Travel_Request_Line_Item__c> items = new List<Travel_Request_Line_Item__c>();

for (Integer i = 0; i < requests.size(); i++) {
    Travel_Request__c req = requests[i];
    Boolean isIntl = req.Trip_Type__c == 'International';
    Boolean isApproved = req.Status__c == 'Approved';
    Boolean isPast = req.Trip_Start_Date__c < Date.today();

    // Number of line items: 3-6 for international, 2-5 for domestic
    Integer numItems = isIntl ? (3 + Math.mod(i, 4)) : (2 + Math.mod(i, 4));

    List<List<Object>> pool = isIntl ? intlExpenses : domesticExpenses;
    Integer poolSize = pool.size();

    for (Integer j = 0; j < numItems; j++) {
        List<Object> expDef = pool[Math.mod((i * 3 + j * 7 + 2), poolSize)];
        String expType = (String) expDef[0];
        Integer minCost = (Integer) expDef[1];
        Integer maxCost = (Integer) expDef[2];

        // Estimate: random within range using index-based variation
        Decimal range = maxCost - minCost;
        Decimal estimatedBase = minCost + (range * Math.mod(i * 17 + j * 31 + 7, 100)) / 100.0;
        Decimal estimated = estimatedBase.setScale(2, RoundingMode.HALF_UP);

        // Actual cost: only for approved past records
        Decimal actual = null;
        if (isApproved && isPast) {
            // Variance: -20% to +25%
            Integer variancePct = Math.mod(i * 11 + j * 13 + 5, 46) - 20; // -20 to +25
            Decimal actualRaw = estimated * (1 + variancePct / 100.0);
            actual = actualRaw.setScale(2, RoundingMode.HALF_UP);
        }

        String lineDesc = expType + ' for ' + req.Destination_City__c + ' trip';

        Travel_Request_Line_Item__c item = new Travel_Request_Line_Item__c(
            Travel_Request__c = req.Id,
            Expense_Type__c   = expType,
            Estimated_Cost__c = estimated,
            Description__c    = lineDesc
        );
        if (actual != null) {
            item.Actual_Cost__c = actual;
        }
        items.add(item);
    }
}

insert items;
System.debug('Inserted ' + items.size() + ' Travel Request Line Items.');
System.debug('Done! Total Travel Requests: ' + requests.size() + ', Total Line Items: ' + items.size());