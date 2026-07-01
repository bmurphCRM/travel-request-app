// Query departments by name to get IDs
Map<String, Id> deptMap = new Map<String, Id>();
for (Department__c d : [SELECT Id, Name FROM Department__c LIMIT 20]) {
    deptMap.put(d.Name, d.Id);
}

// ── Insert 10 Travel Requests ──────────────────────────────────────────────
List<Travel_Request__c> requests = new List<Travel_Request__c>{

    new Travel_Request__c(
        Department__c       = deptMap.get('Sales'),
        Trip_Start_Date__c  = Date.today().addDays(-30),
        Trip_End_Date__c    = Date.today().addDays(-26),
        Destination_City__c = 'New York, NY',
        Business_Purpose__c = 'Annual Sales Conference and partner networking event.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Approved'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Engineering'),
        Trip_Start_Date__c  = Date.today().addDays(-14),
        Trip_End_Date__c    = Date.today().addDays(-11),
        Destination_City__c = 'San Francisco, CA',
        Business_Purpose__c = 'Engineering leadership summit and product roadmap planning.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Approved'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Marketing'),
        Trip_Start_Date__c  = Date.today().addDays(14),
        Trip_End_Date__c    = Date.today().addDays(19),
        Destination_City__c = 'London, UK',
        Business_Purpose__c = 'International digital marketing conference and brand strategy workshops.',
        Trip_Type__c        = 'International',
        Status__c           = 'Pending Approval'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Finance'),
        Trip_Start_Date__c  = Date.today().addDays(7),
        Trip_End_Date__c    = Date.today().addDays(9),
        Destination_City__c = 'Chicago, IL',
        Business_Purpose__c = 'Financial compliance training and regulatory update seminar.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Submitted'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Customer Success'),
        Trip_Start_Date__c  = Date.today().addDays(-7),
        Trip_End_Date__c    = Date.today().addDays(-5),
        Destination_City__c = 'Austin, TX',
        Business_Purpose__c = 'Customer success workshop and key account review meetings.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Approved'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Legal'),
        Trip_Start_Date__c  = Date.today().addDays(-20),
        Trip_End_Date__c    = Date.today().addDays(-18),
        Destination_City__c = 'Washington, DC',
        Business_Purpose__c = 'Corporate legal conference on data privacy and compliance.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Rejected'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Information Technology'),
        Trip_Start_Date__c  = Date.today().addDays(21),
        Trip_End_Date__c    = Date.today().addDays(24),
        Destination_City__c = 'Seattle, WA',
        Business_Purpose__c = 'Cloud infrastructure summit and AWS re:Invent pre-conference sessions.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Pending Approval'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Human Resources'),
        Trip_Start_Date__c  = Date.today().addDays(3),
        Trip_End_Date__c    = Date.today().addDays(5),
        Destination_City__c = 'Denver, CO',
        Business_Purpose__c = 'HR leadership retreat focused on talent acquisition and retention strategies.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Submitted'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Operations'),
        Trip_Start_Date__c  = Date.today().addDays(1),
        Trip_End_Date__c    = Date.today().addDays(2),
        Destination_City__c = 'Dallas, TX',
        Business_Purpose__c = 'Quarterly operations review and supply chain optimization planning.',
        Trip_Type__c        = 'Domestic',
        Status__c           = 'Draft'
    ),
    new Travel_Request__c(
        Department__c       = deptMap.get('Research Development'),
        Trip_Start_Date__c  = Date.today().addDays(30),
        Trip_End_Date__c    = Date.today().addDays(36),
        Destination_City__c = 'Tokyo, Japan',
        Business_Purpose__c = 'R&D innovation conference and joint research partnership meetings with Asia-Pacific teams.',
        Trip_Type__c        = 'International',
        Status__c           = 'Submitted'
    )
};

insert requests;
System.debug('Inserted ' + requests.size() + ' travel requests.');

// ── Insert Line Items ──────────────────────────────────────────────────────
List<Travel_Request_Line_Item__c> items = new List<Travel_Request_Line_Item__c>();

// Request 0: Sales Conference NYC (Approved)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[0].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=450,  Actual_Cost__c=438,  Description__c='Round-trip flight NYC'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[0].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=720,  Actual_Cost__c=756,  Description__c='4 nights Marriott Midtown'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[0].Id, Expense_Type__c='Conference Fees',     Estimated_Cost__c=1200, Actual_Cost__c=1200, Description__c='Annual Sales Conference registration'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[0].Id, Expense_Type__c='Food',                Estimated_Cost__c=200,  Actual_Cost__c=185,  Description__c='Meals for 4 days'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[0].Id, Expense_Type__c='Ground Transportation', Estimated_Cost__c=120, Actual_Cost__c=134, Description__c='Taxi/Uber to/from airport and venue'));

// Request 1: Engineering Summit SF (Approved)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[1].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=380,  Actual_Cost__c=362,  Description__c='Round-trip flight to SFO'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[1].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=900,  Actual_Cost__c=912,  Description__c='3 nights Hotel Nikko SF'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[1].Id, Expense_Type__c='Food',                Estimated_Cost__c=150,  Actual_Cost__c=162,  Description__c='Team dinners and lunches'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[1].Id, Expense_Type__c='Parking',             Estimated_Cost__c=60,   Actual_Cost__c=60,   Description__c='Airport parking 3 days'));

// Request 2: Marketing Conference London (Pending Approval)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[2].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=1800, Description__c='Business class round-trip to London Heathrow'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[2].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=1750, Description__c='5 nights at The Strand hotel London'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[2].Id, Expense_Type__c='Conference Fees',     Estimated_Cost__c=2500, Description__c='International Digital Marketing Conference pass'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[2].Id, Expense_Type__c='Food',                Estimated_Cost__c=400,  Description__c='Per diem meals 5 days'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[2].Id, Expense_Type__c='Ground Transportation', Estimated_Cost__c=250, Description__c='Heathrow Express and local transport'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[2].Id, Expense_Type__c='Miscellaneous',       Estimated_Cost__c=150,  Description__c='Travel insurance and currency exchange fees'));

// Request 3: Finance Training Chicago (Submitted)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[3].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=320,  Description__c='Round-trip to Chicago O\'Hare'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[3].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=420,  Description__c='2 nights Hyatt Chicago'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[3].Id, Expense_Type__c='Conference Fees',     Estimated_Cost__c=850,  Description__c='Financial Compliance Training seminar fee'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[3].Id, Expense_Type__c='Food',                Estimated_Cost__c=90,   Description__c='Meals for 2 days'));

// Request 4: Customer Success Workshop Austin (Approved)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[4].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=290,  Actual_Cost__c=275,  Description__c='Round-trip to Austin-Bergstrom'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[4].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=380,  Actual_Cost__c=395,  Description__c='2 nights at Marriott Austin'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[4].Id, Expense_Type__c='Food',                Estimated_Cost__c=120,  Actual_Cost__c=108,  Description__c='Meals and client entertainment'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[4].Id, Expense_Type__c='Ground Transportation', Estimated_Cost__c=75,  Actual_Cost__c=82,   Description__c='Ride share to/from hotel and client site'));

// Request 5: Legal Conference DC (Rejected)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[5].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=410,  Description__c='Round-trip to Reagan National'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[5].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=560,  Description__c='2 nights Capitol Hill Marriott'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[5].Id, Expense_Type__c='Conference Fees',     Estimated_Cost__c=1500, Description__c='Corporate Legal & Privacy Conference registration'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[5].Id, Expense_Type__c='Parking',             Estimated_Cost__c=45,   Description__c='Airport parking'));

// Request 6: IT Summit Seattle (Pending Approval)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[6].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=360,  Description__c='Round-trip to Seattle-Tacoma'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[6].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=660,  Description__c='3 nights at Hotel Max Seattle'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[6].Id, Expense_Type__c='Conference Fees',     Estimated_Cost__c=1800, Description__c='AWS Cloud Infrastructure Summit pass'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[6].Id, Expense_Type__c='Food',                Estimated_Cost__c=135,  Description__c='Per diem meals 3 days'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[6].Id, Expense_Type__c='Miscellaneous',       Estimated_Cost__c=80,   Description__c='Technical book purchases and supplies'));

// Request 7: HR Retreat Denver (Submitted)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[7].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=310,  Description__c='Round-trip to Denver International'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[7].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=460,  Description__c='2 nights at The Brown Palace Denver'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[7].Id, Expense_Type__c='Food',                Estimated_Cost__c=100,  Description__c='Team dinner and daily meals'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[7].Id, Expense_Type__c='Ground Transportation', Estimated_Cost__c=55,  Description__c='Shuttle and rideshare'));

// Request 8: Operations Review Dallas (Draft)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[8].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=280,  Description__c='Round-trip to Dallas Love Field'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[8].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=240,  Description__c='1 night at Hilton Dallas'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[8].Id, Expense_Type__c='Food',                Estimated_Cost__c=75,   Description__c='Meals during 2-day visit'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[8].Id, Expense_Type__c='Parking',             Estimated_Cost__c=40,   Description__c='Airport long-term parking'));

// Request 9: R&D Conference Tokyo (Submitted)
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[9].Id, Expense_Type__c='Airfare',              Estimated_Cost__c=3200, Description__c='Business class round-trip to Tokyo Narita'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[9].Id, Expense_Type__c='Hotel',               Estimated_Cost__c=2100, Description__c='6 nights at Tokyo Marriott Hotel'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[9].Id, Expense_Type__c='Conference Fees',     Estimated_Cost__c=1500, Description__c='Asia-Pacific R&D Innovation Summit registration'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[9].Id, Expense_Type__c='Food',                Estimated_Cost__c=500,  Description__c='Per diem meals 6 days'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[9].Id, Expense_Type__c='Ground Transportation', Estimated_Cost__c=300, Description__c='Narita Express and metro passes'));
items.add(new Travel_Request_Line_Item__c(Travel_Request__c=requests[9].Id, Expense_Type__c='Miscellaneous',       Estimated_Cost__c=200,  Description__c='Visa fees, travel insurance, and currency conversion'));

insert items;
System.debug('Inserted ' + items.size() + ' travel request line items.');