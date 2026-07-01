<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Travel Request App — Design Plan</title>
  <script src="https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.min.js"></script>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      font-size: 13px;
      color: #1a1a1a;
      background: #fff;
      padding: 40px;
      max-width: 960px;
      margin: 0 auto;
    }
    h1 { font-size: 26px; color: #0070d2; border-bottom: 3px solid #0070d2; padding-bottom: 10px; margin-bottom: 6px; }
    h2 { font-size: 18px; color: #0070d2; margin: 32px 0 10px 0; border-left: 4px solid #0070d2; padding-left: 10px; }
    h3 { font-size: 14px; color: #333; margin: 18px 0 8px 0; }
    .subtitle { color: #666; font-size: 13px; margin-bottom: 30px; }
    table { width: 100%; border-collapse: collapse; margin-bottom: 16px; font-size: 12.5px; }
    th { background: #0070d2; color: #fff; padding: 7px 10px; text-align: left; }
    td { padding: 6px 10px; border-bottom: 1px solid #e0e0e0; vertical-align: top; }
    tr:nth-child(even) td { background: #f4f8ff; }
    .badge {
      display: inline-block; border-radius: 3px; padding: 2px 6px;
      font-size: 11px; font-weight: bold; margin-right: 4px;
    }
    .badge-formula  { background: #e8f4e8; color: #2e7d32; }
    .badge-rollup   { background: #fff3e0; color: #e65100; }
    .badge-picklist { background: #e8eaf6; color: #3949ab; }
    .badge-required { background: #fce4ec; color: #c62828; }
    .badge-lookup   { background: #e0f7fa; color: #00695c; }
    .badge-md       { background: #f3e5f5; color: #6a1b9a; }
    .note { background: #fff8e1; border-left: 4px solid #ffc107; padding: 10px 14px; margin: 12px 0; font-size: 12.5px; border-radius: 2px; }
    .warn { background: #fce4ec; border-left: 4px solid #e91e63; padding: 10px 14px; margin: 12px 0; font-size: 12.5px; border-radius: 2px; }
    .section { margin-bottom: 28px; }
    .mermaid { background: #f8faff; border: 1px solid #d0e4ff; border-radius: 6px; padding: 20px; margin: 16px 0; overflow: auto; }
    .toc { background: #f4f8ff; border: 1px solid #c9dcf5; border-radius: 6px; padding: 16px 20px; margin-bottom: 30px; }
    .toc a { color: #0070d2; text-decoration: none; display: block; padding: 3px 0; font-size: 13px; }
    .toc a:hover { text-decoration: underline; }
    .page-break { page-break-before: always; }
    ul.spaced li { padding: 4px 0; }
    @media print {
      body { padding: 20px; font-size: 11px; }
      h1 { font-size: 20px; }
      h2 { font-size: 15px; }
      .mermaid { page-break-inside: avoid; }
      table { page-break-inside: avoid; }
    }
    footer { margin-top: 40px; border-top: 1px solid #eee; padding-top: 12px; color: #999; font-size: 11px; text-align: center; }
  </style>
</head>
<body>

  <h1>&#9992;&#65039; Travel Request App</h1>
  <p class="subtitle">Salesforce Application Design Plan &nbsp;|&nbsp; Version 1.1 (As-Built) &nbsp;|&nbsp; Generated: July 2026</p>

  <div class="toc">
    <strong>Table of Contents</strong><br/><br/>
    <a href="#overview">1. Application Overview</a>
    <a href="#data-model">2. Data Model & Entity Relationship Diagram</a>
    <a href="#object-dept">3. Department__c Object</a>
    <a href="#object-tr">4. Travel_Request__c Object</a>
    <a href="#object-li">5. Travel_Request_Line_Item__c Object</a>
    <a href="#approval">6. Approval Process</a>
    <a href="#security">7. Security Model</a>
    <a href="#permissions">8. Permission Sets</a>
    <a href="#app">9. Lightning App & Navigation</a>
    <a href="#reports">10. Reports & Dashboards</a>
    <a href="#buildorder">11. Build Order</a>
    <a href="#flexipages">12. Lightning Record Pages</a>
    <a href="#sampledata">13. Sample Data</a>
    <a href="#postdeploy">14. Post-Deployment Checklist</a>
  </div>

  <div class="note" style="background:#e8f5e9; border-color:#4caf50;">
    <strong>&#10003; As-Built Status &mdash; Deployed July 2026</strong>
    <p style="margin-top:6px;">All metadata below reflects the <em>deployed state</em> to org <code>b.murphy@cursor.training</code> (Org ID: <code>00DKa00000ef7AfMAI</code>). Key implementation notes:</p>
    <ul style="margin-top:6px; padding-left:18px;" class="spaced">
      <li><strong>Sharing Model:</strong> <code>Travel_Request__c</code> and <code>Department__c</code> deployed with object-level <code>sharingModel=ReadWrite</code>. The intended OWD (Private / Public Read Only per Section 7) must be configured separately in <strong>Setup &#8594; Security &#8594; Sharing Settings</strong>.</li>
      <li><strong>Approval Process:</strong> Currently <strong>inactive</strong>. Step 2 CFO approver is configured as adhoc — requires manual queue creation and activation before use (see Section 14).</li>
      <li><strong>Lightning Record Pages:</strong> Deployed to org but not yet assigned as org defaults — requires manual activation per object (see Section 14).</li>
      <li><strong>Permission Sets:</strong> All three permission sets deployed and assigned to <code>b.murphy@cursor.training</code>.</li>
      <li><strong>Sample Data:</strong> 10 Departments and 10 Travel Requests (46 line items) loaded into the org.</li>
    </ul>
  </div>

  <!-- ===================== OVERVIEW ===================== -->
  <div class="section" id="overview">
    <h2>1. Application Overview</h2>
    <table>
      <tr><th>Attribute</th><th>Value</th></tr>
      <tr><td>Application Name</td><td><strong>Travel Request App</strong></td></tr>
      <tr><td>Platform</td><td>Salesforce Lightning Experience</td></tr>
      <tr><td>User Base</td><td>~20 employees (all departments)</td></tr>
      <tr><td>Primary Use Case</td><td>Employees submit travel requests for approval; costs tracked per expense line item</td></tr>
      <tr><td>Approval Threshold</td><td>Requests with Total Estimated Cost > $5,000 require a second approval from the CFO role</td></tr>
      <tr><td>OWD (Org-Wide Default)</td><td>Private — employees see only their own records</td></tr>
      <tr><td>Role Hierarchy Sharing</td><td>Enabled — managers see all subordinates' requests</td></tr>
      <tr><td>Attachments</td><td>Employees can attach documents (quotes, itineraries, receipts) to the Travel Request</td></tr>
    </table>
  </div>

  <!-- ===================== ERD ===================== -->
  <div class="section" id="data-model">
    <h2>2. Data Model & Entity Relationship Diagram</h2>
    <div class="mermaid">
erDiagram
    USER {
        string Id
        string FirstName
        string LastName
        string Email
    }
    DEPARTMENT__C {
        string Id
        string Name
        string Department_Code__c
    }
    TRAVEL_REQUEST__C {
        string Id
        string Name_AutoNumber
        string Submitter_Name__c_Formula
        id Department__c
        date Trip_Start_Date__c
        date Trip_End_Date__c
        string Destination_City__c
        textarea Business_Purpose__c
        picklist Trip_Type__c
        picklist Status__c
        currency Total_Estimated_Cost__c
        currency Total_Actual_Cost__c
    }
    TRAVEL_REQUEST_LINE_ITEM__C {
        string Id
        string Name_AutoNumber
        id Travel_Request__c
        picklist Expense_Type__c
        textarea Description__c
        currency Estimated_Cost__c
        currency Actual_Cost__c
    }

    USER ||--o{ TRAVEL_REQUEST__C : "CreatedBy (Formula)"
    DEPARTMENT__C ||--o{ TRAVEL_REQUEST__C : "Lookup"
    TRAVEL_REQUEST__C ||--o{ TRAVEL_REQUEST_LINE_ITEM__C : "Master-Detail"
    </div>

    <div class="note">
      <strong>Relationship Summary:</strong>
      <ul style="margin-top:6px; padding-left:18px;" class="spaced">
        <li><strong>User &#8594; Travel_Request__c:</strong> System <code>CreatedBy</code> relationship. The <code>Submitter_Name__c</code> formula field reads <code>CreatedBy.FirstName & " " & CreatedBy.LastName</code> — read-only, no manual selection needed.</li>
        <li><strong>Department__c &#8594; Travel_Request__c:</strong> Lookup relationship. Many requests can reference one department. Employee selects via lookup search.</li>
        <li><strong>Travel_Request__c &#8594; Travel_Request_Line_Item__c:</strong> Master-Detail. Line items are owned by the parent request. Deleting a Travel Request cascades and deletes all child line items. Roll-Up Summary fields aggregate line item costs to the parent.</li>
      </ul>
    </div>
  </div>

  <!-- ===================== DEPARTMENT ===================== -->
  <div class="section page-break" id="object-dept">
    <h2>3. Department__c Object</h2>
    <table>
      <tr><th>Field Label</th><th>API Name</th><th>Type</th><th>Notes</th></tr>
      <tr>
        <td>Department Name</td>
        <td>Name</td>
        <td>Text (Standard Name Field)</td>
        <td><span class="badge badge-required">Required</span> e.g., "Finance", "Engineering"</td>
      </tr>
      <tr>
        <td>Department Code</td>
        <td>Department_Code__c</td>
        <td>Text(3)</td>
        <td>3-letter department code (e.g., FIN, ENG, MKT, HRD)</td>
      </tr>
    </table>
    <p class="note">Employees select their department via a <strong>Lookup</strong> from the Travel Request. An admin maintains the Department list — employees do not create new departments.</p>
  </div>

  <!-- ===================== TRAVEL REQUEST ===================== -->
  <div class="section" id="object-tr">
    <h2>4. Travel_Request__c Object</h2>
    <table>
      <tr><th>Field Label</th><th>API Name</th><th>Type</th><th>Notes</th></tr>
      <tr>
        <td>Travel Request Name</td>
        <td>Name</td>
        <td>Auto-Number</td>
        <td>Format: <code>TR-{0000}</code> (e.g., TR-0001)</td>
      </tr>
      <tr>
        <td>Submitter Name</td>
        <td>Submitter_Name__c</td>
        <td>Formula (Text)</td>
        <td><span class="badge badge-formula">Formula</span> <code>CreatedBy.FirstName & " " & CreatedBy.LastName</code> — auto-populated, read-only on page layout</td>
      </tr>
      <tr>
        <td>Department</td>
        <td>Department__c</td>
        <td>Lookup &#8594; Department__c</td>
        <td><span class="badge badge-lookup">Lookup</span> Employee selects their department</td>
      </tr>
      <tr>
        <td>Trip Start Date</td>
        <td>Trip_Start_Date__c</td>
        <td>Date</td>
        <td><span class="badge badge-required">Required</span></td>
      </tr>
      <tr>
        <td>Trip End Date</td>
        <td>Trip_End_Date__c</td>
        <td>Date</td>
        <td><span class="badge badge-required">Required</span> Validated: cannot be before Trip Start Date</td>
      </tr>
      <tr>
        <td>Destination City</td>
        <td>Destination_City__c</td>
        <td>Text(100)</td>
        <td>Primary city of travel</td>
      </tr>
      <tr>
        <td>Business Purpose</td>
        <td>Business_Purpose__c</td>
        <td>Long Text Area</td>
        <td>Free-text justification for the trip</td>
      </tr>
      <tr>
        <td>Trip Type</td>
        <td>Trip_Type__c</td>
        <td>Picklist</td>
        <td><span class="badge badge-picklist">Picklist</span> Domestic, International</td>
      </tr>
      <tr>
        <td>Status</td>
        <td>Status__c</td>
        <td>Picklist</td>
        <td><span class="badge badge-picklist">Picklist</span> Draft &#8594; Submitted &#8594; Pending Approval &#8594; Approved / Rejected</td>
      </tr>
      <tr>
        <td>Total Estimated Cost</td>
        <td>Total_Estimated_Cost__c</td>
        <td>Roll-Up Summary</td>
        <td><span class="badge badge-rollup">Roll-Up</span> SUM of <code>Estimated_Cost__c</code> from child line items. Drives the $5,000 approval threshold.</td>
      </tr>
      <tr>
        <td>Total Actual Cost</td>
        <td>Total_Actual_Cost__c</td>
        <td>Roll-Up Summary</td>
        <td><span class="badge badge-rollup">Roll-Up</span> SUM of <code>Actual_Cost__c</code> from child line items. Used for post-trip variance reporting.</td>
      </tr>
    </table>

    <h3>Validation Rule</h3>
    <table>
      <tr><th>Rule Name</th><th>Error Condition Formula</th><th>Error Message</th><th>Field</th></tr>
      <tr>
        <td>End_Date_Before_Start_Date</td>
        <td><code>Trip_End_Date__c < Trip_Start_Date__c</code></td>
        <td>"Trip End Date cannot be before Trip Start Date."</td>
        <td>Trip_End_Date__c</td>
      </tr>
    </table>
  </div>

  <!-- ===================== LINE ITEM ===================== -->
  <div class="section page-break" id="object-li">
    <h2>5. Travel_Request_Line_Item__c Object</h2>
    <div class="note">
      <strong>Relationship:</strong> Master-Detail &#8594; Travel_Request__c. Displayed as a related list on the Travel Request record page.
      Deleting a Travel Request cascades and deletes all its line items.
    </div>
    <table>
      <tr><th>Field Label</th><th>API Name</th><th>Type</th><th>Notes</th></tr>
      <tr>
        <td>Line Item Name</td>
        <td>Name</td>
        <td>Auto-Number</td>
        <td>Format: <code>LI-{0000}</code></td>
      </tr>
      <tr>
        <td>Travel Request</td>
        <td>Travel_Request__c</td>
        <td>Master-Detail &#8594; Travel_Request__c</td>
        <td><span class="badge badge-md">Master-Detail</span></td>
      </tr>
      <tr>
        <td>Expense Type</td>
        <td>Expense_Type__c</td>
        <td>Picklist</td>
        <td>
          <span class="badge badge-picklist">Picklist</span>
          Airfare, Hotel, Food, Ground Transportation, Conference Fees, Parking, Miscellaneous
        </td>
      </tr>
      <tr>
        <td>Description</td>
        <td>Description__c</td>
        <td>Long Text Area</td>
        <td>Details of the specific expense (e.g., "United Airlines SFO-JFK round trip")</td>
      </tr>
      <tr>
        <td>Estimated Cost</td>
        <td>Estimated_Cost__c</td>
        <td>Currency</td>
        <td>Pre-trip estimated amount for this line item</td>
      </tr>
      <tr>
        <td>Actual Cost</td>
        <td>Actual_Cost__c</td>
        <td>Currency</td>
        <td>Post-trip actual amount spent. Used for variance analysis vs. estimate.</td>
      </tr>
    </table>
  </div>

  <!-- ===================== APPROVAL PROCESS ===================== -->
  <div class="section page-break" id="approval">
    <h2>6. Approval Process</h2>
    <p style="margin-bottom:12px;">The approval process is triggered when the employee clicks <strong>"Submit for Approval"</strong> on a Travel Request record.</p>

    <h3>Approval Flow</h3>
    <div class="mermaid">
flowchart TD
    A([Employee clicks Submit for Approval]) --> B[Employee selects their Approver\ne.g. their Manager]
    B --> C{Status = Pending Approval}
    C --> D[Step 1: Selected Approver receives email notification]
    D --> E{Approver Decision}
    E -->|Approve| F{Total Estimated Cost > $5,000?}
    E -->|Reject| R1[Status = Rejected\nRecord unlocked for editing\nSubmitter receives rejection email]
    R1 --> R2[Employee edits and resubmits\nReturns to last rejecting approver]
    F -->|No| G([Status = Approved\nSubmitter receives approval email])
    F -->|Yes| H[Step 2: Routes to CFO Role\nCFO receives email notification]
    H --> I{CFO Decision}
    I -->|Approve| G
    I -->|Reject| R3[Status = Rejected\nRecord unlocked for editing\nSubmitter receives rejection email]
    R3 --> R2
    </div>

    <h3>Approval Process Configuration</h3>
    <table>
      <tr><th>Setting</th><th>Value</th></tr>
      <tr><td>Process Name</td><td>Travel_Request_Approval</td></tr>
      <tr><td>Object</td><td>Travel_Request__c</td></tr>
      <tr><td>Entry Criteria</td><td>Status__c = "Submitted"</td></tr>
      <tr><td>Record Editability</td><td>Only the administrator can edit the record (locked during approval)</td></tr>
      <tr><td>Submission Action</td><td>Set Status__c = "Pending Approval"</td></tr>
      <tr><td>Rejection Action (any step)</td><td>Set Status__c = "Rejected"; unlock record; send email to submitter</td></tr>
      <tr><td>Final Approval Action</td><td>Set Status__c = "Approved"; send email to submitter</td></tr>
      <tr><td>Recall Action</td><td>Set Status__c = "Draft"; unlock record</td></tr>
    </table>

    <h3>Approval Steps</h3>
    <table>
      <tr><th>Step</th><th>Name</th><th>Criteria</th><th>Approver</th><th>Email Template</th></tr>
      <tr>
        <td>Step 1</td>
        <td>Manager Approval</td>
        <td>Always (no criteria — applies to all submissions)</td>
        <td>User-selected approver at submission time (e.g., employee's manager)</td>
        <td>Travel Request Pending Approval</td>
      </tr>
      <tr>
        <td>Step 2</td>
        <td>CFO Approval</td>
        <td><code>Total_Estimated_Cost__c > 5000</code></td>
        <td>User(s) with the <strong>CFO</strong> role</td>
        <td>Travel Request Pending CFO Approval</td>
      </tr>
    </table>

    <h3>Resubmission Behavior</h3>
    <div class="note">
      When a request is <strong>rejected</strong>, the record is unlocked and the submitter receives an email. Upon resubmission, the request routes back to the <strong>approver who last rejected it</strong> — it does not restart from Step 1. This applies whether rejection came from the manager (Step 1) or the CFO (Step 2).
    </div>

    <h3>Email Notifications</h3>
    <table>
      <tr><th>Event</th><th>Recipient</th><th>Template Name</th></tr>
      <tr><td>Request submitted (Step 1)</td><td>Selected approver (manager)</td><td>Travel_Request_Pending_Approval</td></tr>
      <tr><td>Request escalated (Step 2)</td><td>CFO role user(s)</td><td>Travel_Request_Pending_CFO_Approval</td></tr>
      <tr><td>Request rejected</td><td>Submitter</td><td>Travel_Request_Rejected</td></tr>
      <tr><td>Request approved (final)</td><td>Submitter</td><td>Travel_Request_Approved</td></tr>
    </table>

    <h3>Workflow Field Updates</h3>
    <p style="margin-bottom:8px;">Three Workflow Rules are deployed on <code>Travel_Request__c</code> to drive status field transitions. These are invoked by the Approval Process actions and keep <code>Status__c</code> in sync at each lifecycle stage.</p>
    <table>
      <tr><th>Workflow Rule Name</th><th>Trigger</th><th>Field Updated</th><th>New Value</th></tr>
      <tr>
        <td>Set_Status_Pending_Approval</td>
        <td>Approval submission action</td>
        <td>Status__c</td>
        <td>Pending Approval</td>
      </tr>
      <tr>
        <td>Set_Status_Approved</td>
        <td>Final approval action</td>
        <td>Status__c</td>
        <td>Approved</td>
      </tr>
      <tr>
        <td>Set_Status_Rejected</td>
        <td>Rejection action (any step)</td>
        <td>Status__c</td>
        <td>Rejected</td>
      </tr>
    </table>
    <div class="note">
      These three workflow field updates are defined in <code>force-app/main/default/workflows/Travel_Request__c.workflow-meta.xml</code> and are deployed as part of the <strong>Workflow</strong> metadata type. They work alongside the Approval Process — the Approval Process triggers the action, and the workflow field update performs the actual status change.
    </div>
  </div>

  <!-- ===================== SECURITY ===================== -->
  <div class="section page-break" id="security">
    <h2>7. Security Model</h2>

    <h3>Org-Wide Defaults</h3>
    <table>
      <tr><th>Object</th><th>OWD Setting</th><th>Rationale</th></tr>
      <tr><td>Travel_Request__c</td><td><strong>Private</strong></td><td>Employees see only their own records by default</td></tr>
      <tr><td>Travel_Request_Line_Item__c</td><td>Controlled by Parent</td><td>Master-Detail — inherits parent request visibility</td></tr>
      <tr><td>Department__c</td><td><strong>Public Read Only</strong></td><td>All employees need to read department records for the lookup</td></tr>
    </table>

    <h3>Record Access by Role</h3>
    <table>
      <tr><th>User Type</th><th>Record Visibility</th><th>Mechanism</th></tr>
      <tr>
        <td>Standard Employee</td>
        <td>Own records only</td>
        <td>OWD = Private</td>
      </tr>
      <tr>
        <td>Manager</td>
        <td>Own records + all direct reports' records</td>
        <td>Role Hierarchy (Grant Access Using Hierarchies = enabled)</td>
      </tr>
      <tr>
        <td>Finance / Admin</td>
        <td>All records across all employees</td>
        <td>View All permission on Travel_Request__c via Permission Set</td>
      </tr>
      <tr>
        <td>CFO</td>
        <td>All records + approval access</td>
        <td>View All permission on Travel_Request__c via Permission Set + CFO Role</td>
      </tr>
    </table>
  </div>

  <!-- ===================== PERMISSION SETS ===================== -->
  <div class="section" id="permissions">
    <h2>8. Permission Sets</h2>
    <table>
      <tr><th>Permission Set</th><th>Assigned To</th><th>Object Permissions</th><th>Special Permissions</th></tr>
      <tr>
        <td><strong>Travel_Request_Employee</strong></td>
        <td>All employees</td>
        <td>
          Travel_Request__c: Create, Read, Edit (own)<br/>
          Travel_Request_Line_Item__c: Create, Read, Edit, Delete<br/>
          Department__c: Read
        </td>
        <td>Submit for Approval action visible</td>
      </tr>
      <tr>
        <td><strong>Travel_Request_Manager</strong></td>
        <td>Managers</td>
        <td>
          Travel_Request__c: Read (all in hierarchy), Edit<br/>
          Travel_Request_Line_Item__c: Read, Edit<br/>
          Department__c: Read
        </td>
        <td>Approve/Reject action; view subordinate records via role hierarchy</td>
      </tr>
      <tr>
        <td><strong>Travel_Request_Finance</strong></td>
        <td>Finance team, Admin, CFO</td>
        <td>
          Travel_Request__c: Read All, Edit All<br/>
          Travel_Request_Line_Item__c: Read All<br/>
          Department__c: Create, Read, Edit, Delete
        </td>
        <td>View All on Travel Request; Modify All on Departments; run all reports</td>
      </tr>
    </table>
  </div>

  <!-- ===================== LIGHTNING APP ===================== -->
  <div class="section page-break" id="app">
    <h2>9. Lightning App & Navigation</h2>
    <table>
      <tr><th>Setting</th><th>Value</th></tr>
      <tr><td>App Name</td><td><strong>Travel Request App</strong></td></tr>
      <tr><td>App Type</td><td>Lightning App (Lightning Experience)</td></tr>
      <tr><td>Developer Name</td><td>Travel_Request_App</td></tr>
      <tr><td>Description</td><td>Application for submitting and managing employee travel requests</td></tr>
    </table>

    <h3>Navigation Tabs</h3>
    <table>
      <tr><th>Tab</th><th>Object / Target</th><th>Notes</th></tr>
      <tr><td>Travel Requests</td><td>Travel_Request__c</td><td>Primary object — default landing tab</td></tr>
      <tr><td>Departments</td><td>Department__c</td><td>Admin-maintained lookup list</td></tr>
      <tr><td>Reports</td><td>Reports folder</td><td>Travel Request reports</td></tr>
      <tr><td>Dashboards</td><td>Dashboards folder</td><td>Travel Request dashboard</td></tr>
    </table>
  </div>

  <!-- ===================== REPORTS ===================== -->
  <div class="section" id="reports">
    <h2>10. Reports & Dashboards</h2>

    <h3>Reports</h3>
    <table>
      <tr><th>#</th><th>Report Name</th><th>Type</th><th>Object(s)</th><th>Description</th></tr>
      <tr>
        <td>1</td>
        <td>Total Travel Spend by Department</td>
        <td>Summary</td>
        <td>Travel_Request__c</td>
        <td>SUM of Total Estimated Cost and Total Actual Cost grouped by Department. Shows which departments spend the most on travel.</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Requests Pending Approval</td>
        <td>Tabular</td>
        <td>Travel_Request__c</td>
        <td>Filtered to Status = "Pending Approval". Shows submitter, destination, total estimated cost, submission date.</td>
      </tr>
      <tr>
        <td>3</td>
        <td>Estimated vs. Actual Cost by Trip</td>
        <td>Summary</td>
        <td>Travel_Request__c</td>
        <td>Side-by-side comparison of Total Estimated Cost vs. Total Actual Cost per Travel Request. Highlights variance.</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Travel Requests by Employee</td>
        <td>Summary</td>
        <td>Travel_Request__c</td>
        <td>All requests grouped by Submitter Name. Shows count and total estimated cost per employee.</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Travel Cost Trends Over Time</td>
        <td>Summary</td>
        <td>Travel_Request__c</td>
        <td>Monthly/quarterly spend trend. Grouped by Trip Start Date (month). Shows estimated and actual cost over time. Drives the trend line chart on the dashboard.</td>
      </tr>
    </table>

    <h3>Dashboard: Travel Request Overview</h3>
    <table>
      <tr><th>Component</th><th>Chart Type</th><th>Source Report</th></tr>
      <tr><td>Spend by Department</td><td>Horizontal Bar Chart</td><td>Total Travel Spend by Department</td></tr>
      <tr><td>Requests Pending Approval</td><td>Metric / Count</td><td>Requests Pending Approval</td></tr>
      <tr><td>Estimated vs. Actual Cost</td><td>Grouped Bar Chart</td><td>Estimated vs. Actual Cost by Trip</td></tr>
      <tr><td>Requests by Employee</td><td>Donut Chart</td><td>Travel Requests by Employee</td></tr>
      <tr><td>Cost Trends Over Time</td><td>Line Chart</td><td>Travel Cost Trends Over Time</td></tr>
    </table>
  </div>

  <!-- ===================== BUILD ORDER ===================== -->
  <div class="section page-break" id="buildorder">
    <h2>11. Build Order (Dependency-Safe Sequence)</h2>
    <div class="note">Metadata must be deployed in this order to satisfy object relationships and field dependencies.</div>
    <table>
      <tr><th>Step</th><th>Metadata Type</th><th>Records</th><th>Dependency</th></tr>
      <tr><td>1</td><td>Custom Object</td><td>Department__c</td><td>None — standalone object</td></tr>
      <tr><td>2</td><td>Custom Object + Fields</td><td>Travel_Request__c (all fields except Roll-Ups)</td><td>Requires Department__c to exist for Lookup field</td></tr>
      <tr><td>3</td><td>Validation Rule</td><td>End_Date_Before_Start_Date on Travel_Request__c</td><td>Requires Trip_Start_Date__c and Trip_End_Date__c fields</td></tr>
      <tr><td>4</td><td>Custom Object + Fields</td><td>Travel_Request_Line_Item__c</td><td>Requires Travel_Request__c to exist for Master-Detail field</td></tr>
      <tr><td>5</td><td>Roll-Up Summary Fields</td><td>Total_Estimated_Cost__c, Total_Actual_Cost__c on Travel_Request__c</td><td>Requires Travel_Request_Line_Item__c with Estimated_Cost__c and Actual_Cost__c fields</td></tr>
      <tr><td>6</td><td>Permission Sets</td><td>Travel_Request_Employee, Travel_Request_Manager, Travel_Request_Finance</td><td>Requires all objects and fields to exist</td></tr>
      <tr><td>7</td><td>Page Layouts</td><td>Travel_Request__c layout, Travel_Request_Line_Item__c layout</td><td>Requires all fields</td></tr>
      <tr><td>8</td><td>Custom Tabs</td><td>Travel_Request__c tab, Department__c tab</td><td>Requires objects</td></tr>
      <tr><td>9</td><td>Lightning App</td><td>Travel_Request_App</td><td>Requires tabs</td></tr>
      <tr><td>10</td><td>Approval Process</td><td>Travel_Request_Approval (2-step)</td><td>Requires Status__c picklist, Total_Estimated_Cost__c Roll-Up, email templates</td></tr>
      <tr><td>11</td><td>Reports & Dashboards</td><td>5 reports + Travel Request Overview dashboard</td><td>Requires all objects, fields, and data</td></tr>
      <tr><td>12</td><td>Lightning Record Pages (FlexiPages)</td><td>Travel_Request_Record_Page, Travel_Request_Line_Item_Record_Page, Department_Record_Page</td><td>Requires all objects and fields; deployed via <code>sf project deploy start</code></td></tr>
    </table>
    <div class="note">Steps 1–12 were completed and deployed to <code>b.murphy@cursor.training</code> in July 2026. Steps 3 (Reports & Dashboards) and the OWD/Role Hierarchy configuration remain as manual post-deployment tasks — see Section 14.</div>
  </div>

  <!-- ===================== LIGHTNING RECORD PAGES ===================== -->
  <div class="section page-break" id="flexipages">
    <h2>12. Lightning Record Pages (FlexiPages)</h2>
    <p style="margin-bottom:10px;">Three Lightning Record Pages were generated using the Salesforce CLI template command and deployed to the org. All pages use the <code>flexipage:recordHomeTemplateDesktop</code> template with a header, main tabset, and sidebar activity panel.</p>

    <h3>12.1 Travel_Request_Record_Page</h3>
    <table>
      <tr><th>Setting</th><th>Value</th></tr>
      <tr><td>File</td><td><code>force-app/main/default/flexipages/Travel_Request_Record_Page.flexipage-meta.xml</code></td></tr>
      <tr><td>Object</td><td>Travel_Request__c</td></tr>
      <tr><td>Template</td><td>flexipage:recordHomeTemplateDesktop</td></tr>
      <tr><td>Org ID (FlexiPage)</td><td>0M0Ka000000nxnVKAQ</td></tr>
    </table>

    <h3>Header — Dynamic Highlights</h3>
    <table>
      <tr><th>Slot</th><th>Fields</th></tr>
      <tr><td>Primary Field</td><td>Name (Auto-Number: TR-XXXX)</td></tr>
      <tr><td>Secondary Fields</td><td>Status__c, Trip_Type__c, Destination_City__c, Department__c, Trip_Start_Date__c, Trip_End_Date__c</td></tr>
      <tr><td>Actions</td><td>Edit, Delete (numVisibleActions=3)</td></tr>
    </table>

    <h3>Main Region — Detail Tab (default active)</h3>
    <table>
      <tr><th>Column</th><th>Fields (top to bottom)</th></tr>
      <tr><td>Column 1</td><td>Name, Status__c, Trip_Type__c, Destination_City__c, Department__c, Trip_Start_Date__c</td></tr>
      <tr><td>Column 2</td><td>Trip_End_Date__c, Submitter_Name__c, Business_Purpose__c, Total_Estimated_Cost__c, Total_Actual_Cost__c</td></tr>
    </table>

    <h3>Main Region — Related Lists Tab</h3>
    <p style="margin-bottom:8px;">Renders all related lists for the record (including <strong>Travel Request Line Items</strong> and standard related lists) using <code>force:relatedListContainer</code> with 10 rows and the action bar visible.</p>

    <h3>Sidebar Region</h3>
    <p style="margin-bottom:8px;">Single tab: <strong>Activity</strong> — rendered by <code>runtime_sales_activities:activityPanel</code>.</p>

    <hr style="border:none; border-top:1px solid #e0e0e0; margin:20px 0;"/>

    <h3>12.2 Travel_Request_Line_Item_Record_Page</h3>
    <table>
      <tr><th>Setting</th><th>Value</th></tr>
      <tr><td>File</td><td><code>force-app/main/default/flexipages/Travel_Request_Line_Item_Record_Page.flexipage-meta.xml</code></td></tr>
      <tr><td>Object</td><td>Travel_Request_Line_Item__c</td></tr>
      <tr><td>Template</td><td>flexipage:recordHomeTemplateDesktop</td></tr>
      <tr><td>Org ID (FlexiPage)</td><td>0M0Ka000000nxnUKAQ</td></tr>
    </table>

    <h3>Header — Dynamic Highlights</h3>
    <table>
      <tr><th>Slot</th><th>Fields</th></tr>
      <tr><td>Primary Field</td><td>Name (Auto-Number: LI-XXXX)</td></tr>
      <tr><td>Secondary Fields</td><td>Travel_Request__c, Expense_Type__c, Estimated_Cost__c, Actual_Cost__c</td></tr>
      <tr><td>Actions</td><td>Edit, Delete (numVisibleActions=3)</td></tr>
    </table>

    <h3>Main Region — Detail Tab (default active)</h3>
    <table>
      <tr><th>Column</th><th>Fields (top to bottom)</th></tr>
      <tr><td>Column 1</td><td>Name, Travel_Request__c, Expense_Type__c</td></tr>
      <tr><td>Column 2</td><td>Estimated_Cost__c, Actual_Cost__c, Description__c</td></tr>
    </table>

    <h3>Main Region — Related Lists Tab</h3>
    <p style="margin-bottom:8px;">Renders all related lists for the line item record using <code>force:relatedListContainer</code>.</p>

    <h3>Sidebar Region</h3>
    <p style="margin-bottom:8px;">Single tab: <strong>Activity</strong> — rendered by <code>runtime_sales_activities:activityPanel</code>.</p>

    <hr style="border:none; border-top:1px solid #e0e0e0; margin:20px 0;"/>

    <h3>12.3 Department_Record_Page</h3>
    <table>
      <tr><th>Setting</th><th>Value</th></tr>
      <tr><td>File</td><td><code>force-app/main/default/flexipages/Department_Record_Page.flexipage-meta.xml</code></td></tr>
      <tr><td>Object</td><td>Department__c</td></tr>
      <tr><td>Template</td><td>flexipage:recordHomeTemplateDesktop</td></tr>
      <tr><td>Org ID (FlexiPage)</td><td>0M0Ka000000nxnTKAQ</td></tr>
    </table>

    <h3>Header — Dynamic Highlights</h3>
    <table>
      <tr><th>Slot</th><th>Fields</th></tr>
      <tr><td>Primary Field</td><td>Name (Department Name)</td></tr>
      <tr><td>Secondary Fields</td><td>Department_Code__c</td></tr>
      <tr><td>Actions</td><td>Edit, Delete (numVisibleActions=3)</td></tr>
    </table>

    <h3>Main Region — Detail Tab (default active)</h3>
    <table>
      <tr><th>Column</th><th>Fields (top to bottom)</th></tr>
      <tr><td>Column 1</td><td>Name</td></tr>
      <tr><td>Column 2</td><td>Department_Code__c</td></tr>
    </table>

    <h3>Main Region — Related Lists Tab</h3>
    <p style="margin-bottom:8px;">Renders all related lists for the department, including the <strong>Travel Requests</strong> related list (via the Department__c Lookup on Travel_Request__c), using <code>force:relatedListContainer</code>.</p>

    <h3>Sidebar Region</h3>
    <p style="margin-bottom:8px;">Single tab: <strong>Activity</strong> — rendered by <code>runtime_sales_activities:activityPanel</code>.</p>

    <div class="warn">
      <strong>&#9888; Activation Required:</strong> All three pages are deployed to the org but are <em>not yet assigned</em> as org defaults. See Section 14 (Step 6) for activation instructions.
    </div>
  </div>

  <!-- ===================== SAMPLE DATA ===================== -->
  <div class="section page-break" id="sampledata">
    <h2>13. Sample Data</h2>
    <p style="margin-bottom:10px;">Sample data was loaded into <code>b.murphy@cursor.training</code> via Anonymous Apex scripts located in <code>scripts/apex/</code>.</p>

    <h3>Departments (10 records)</h3>
    <p style="margin-bottom:8px;">Script: <code>scripts/apex/create_sample_departments.apex</code></p>
    <table>
      <tr><th>#</th><th>Department Name</th><th>Department Code</th></tr>
      <tr><td>1</td><td>Finance</td><td>FIN</td></tr>
      <tr><td>2</td><td>Engineering</td><td>ENG</td></tr>
      <tr><td>3</td><td>Marketing</td><td>MKT</td></tr>
      <tr><td>4</td><td>Human Resources</td><td>HRD</td></tr>
      <tr><td>5</td><td>Operations</td><td>OPS</td></tr>
      <tr><td>6</td><td>Sales</td><td>SAL</td></tr>
      <tr><td>7</td><td>Legal</td><td>LEG</td></tr>
      <tr><td>8</td><td>Information Technology</td><td>ITE</td></tr>
      <tr><td>9</td><td>Product</td><td>PRD</td></tr>
      <tr><td>10</td><td>Executive</td><td>EXE</td></tr>
    </table>

    <h3>Travel Requests (10 records, 46 Line Items)</h3>
    <p style="margin-bottom:8px;">Script: <code>scripts/apex/create_sample_travel_requests.apex</code></p>
    <table>
      <tr><th>Record</th><th>Department</th><th>Destination</th><th>Trip Type</th><th>Status</th><th>Line Items</th></tr>
      <tr><td>TR-0001</td><td>Sales</td><td>New York, NY</td><td>Domestic</td><td>Approved</td><td>5 (Airfare, Hotel, Food, Ground Transportation, Parking)</td></tr>
      <tr><td>TR-0002</td><td>Engineering</td><td>San Francisco, CA</td><td>Domestic</td><td>Submitted</td><td>4 (Airfare, Hotel, Food, Conference Fees)</td></tr>
      <tr><td>TR-0003</td><td>Marketing</td><td>London, UK</td><td>International</td><td>Pending Approval</td><td>5 (Airfare, Hotel, Food, Ground Transportation, Conference Fees)</td></tr>
      <tr><td>TR-0004</td><td>Finance</td><td>Chicago, IL</td><td>Domestic</td><td>Approved</td><td>4 (Airfare, Hotel, Food, Miscellaneous)</td></tr>
      <tr><td>TR-0005</td><td>Product</td><td>Austin, TX</td><td>Domestic</td><td>Draft</td><td>5 (Airfare, Hotel, Food, Ground Transportation, Conference Fees)</td></tr>
      <tr><td>TR-0006</td><td>Executive</td><td>Tokyo, Japan</td><td>International</td><td>Pending Approval</td><td>5 (Airfare, Hotel, Food, Ground Transportation, Miscellaneous)</td></tr>
      <tr><td>TR-0007</td><td>Human Resources</td><td>Atlanta, GA</td><td>Domestic</td><td>Rejected</td><td>4 (Airfare, Hotel, Food, Parking)</td></tr>
      <tr><td>TR-0008</td><td>Operations</td><td>Seattle, WA</td><td>Domestic</td><td>Submitted</td><td>5 (Airfare, Hotel, Food, Ground Transportation, Conference Fees)</td></tr>
      <tr><td>TR-0009</td><td>Legal</td><td>Paris, France</td><td>International</td><td>Approved</td><td>5 (Airfare, Hotel, Food, Ground Transportation, Conference Fees)</td></tr>
      <tr><td>TR-0010</td><td>Information Technology</td><td>Las Vegas, NV</td><td>Domestic</td><td>Draft</td><td>4 (Airfare, Hotel, Conference Fees, Miscellaneous)</td></tr>
    </table>

    <div class="note">
      <strong>Total line items:</strong> 46 records covering all 7 expense types (Airfare, Hotel, Food, Ground Transportation, Conference Fees, Parking, Miscellaneous). Each line item includes both an <code>Estimated_Cost__c</code> and <code>Actual_Cost__c</code> to enable variance analysis via the Roll-Up Summary fields and reports.
    </div>
  </div>

  <!-- ===================== POST-DEPLOYMENT CHECKLIST ===================== -->
  <div class="section page-break" id="postdeploy">
    <h2>14. Post-Deployment Checklist</h2>
    <p style="margin-bottom:10px;">The following tasks require manual configuration in Salesforce Setup after the metadata deployment. These cannot be automated via SFDX metadata deployment.</p>

    <h3>&#9312; Sharing Settings (OWD)</h3>
    <div class="warn">Required before go-live — current OWD is not enforcing the designed security model.</div>
    <table>
      <tr><th>Step</th><th>Action</th></tr>
      <tr><td>1</td><td>Go to <strong>Setup &#8594; Security &#8594; Sharing Settings</strong></td></tr>
      <tr><td>2</td><td>Set <code>Travel_Request__c</code> OWD to <strong>Private</strong></td></tr>
      <tr><td>3</td><td>Set <code>Department__c</code> OWD to <strong>Public Read Only</strong></td></tr>
      <tr><td>4</td><td>Confirm <code>Travel_Request_Line_Item__c</code> is <strong>Controlled by Parent</strong></td></tr>
      <tr><td>5</td><td>Enable <strong>Grant Access Using Hierarchies</strong> for Travel_Request__c</td></tr>
      <tr><td>6</td><td>Save and recalculate sharing</td></tr>
    </table>

    <h3>&#9313; Role Hierarchy</h3>
    <table>
      <tr><th>Step</th><th>Action</th></tr>
      <tr><td>1</td><td>Go to <strong>Setup &#8594; Users &#8594; Roles</strong></td></tr>
      <tr><td>2</td><td>Create role: <strong>CEO</strong> (top of hierarchy)</td></tr>
      <tr><td>3</td><td>Create role: <strong>CFO</strong> (reports to CEO)</td></tr>
      <tr><td>4</td><td>Create role: <strong>Manager</strong> (reports to CFO or CEO as appropriate)</td></tr>
      <tr><td>5</td><td>Create role: <strong>Employee</strong> (reports to Manager)</td></tr>
      <tr><td>6</td><td>Assign users to their appropriate roles</td></tr>
    </table>

    <h3>&#9314; CFO Approvals Queue & Approval Process Activation</h3>
    <div class="warn">Required before the Approval Process can be used — the process is currently inactive and Step 2 has no queue configured.</div>
    <table>
      <tr><th>Step</th><th>Action</th></tr>
      <tr><td>1</td><td>Go to <strong>Setup &#8594; Queues</strong> &#8594; click <strong>New</strong></td></tr>
      <tr><td>2</td><td>Set Label: <code>CFO Approvals</code>, Queue Name: <code>CFO_Approvals</code></td></tr>
      <tr><td>3</td><td>Add <strong>Travel_Request__c</strong> to Supported Objects</td></tr>
      <tr><td>4</td><td>Add the CFO user to Queue Members &#8594; Save</td></tr>
      <tr><td>5</td><td>Go to <strong>Setup &#8594; Approval Processes &#8594; Travel_Request__c &#8594; Travel_Request_Approval</strong></td></tr>
      <tr><td>6</td><td>Click <strong>Step 2 (CFO Approval)</strong> &#8594; Edit</td></tr>
      <tr><td>7</td><td>Change approver type to <strong>Queue</strong> &#8594; select <code>CFO Approvals</code> &#8594; Save</td></tr>
      <tr><td>8</td><td>Return to the approval process list &#8594; click <strong>Activate</strong> next to <code>Travel_Request_Approval</code></td></tr>
    </table>
    <div class="note">
      <strong>Alternative:</strong> Instead of a queue, you can assign a specific user as the CFO approver. In Step 6–7, change the approver type to <strong>Specific User</strong> and select the CFO user directly.
    </div>

    <h3>&#9315; Assign Lightning Record Pages as Org Defaults</h3>
    <table>
      <tr><th>Object</th><th>Steps</th></tr>
      <tr>
        <td>Travel_Request__c</td>
        <td>Open any Travel Request record &#8594; gear icon &#8594; <strong>Edit Page</strong> &#8594; <strong>Activation</strong> &#8594; <strong>Assign as Org Default</strong> &#8594; Save & Activate</td>
      </tr>
      <tr>
        <td>Travel_Request_Line_Item__c</td>
        <td>Open any Line Item record &#8594; gear icon &#8594; <strong>Edit Page</strong> &#8594; <strong>Activation</strong> &#8594; <strong>Assign as Org Default</strong> &#8594; Save & Activate</td>
      </tr>
      <tr>
        <td>Department__c</td>
        <td>Open any Department record &#8594; gear icon &#8594; <strong>Edit Page</strong> &#8594; <strong>Activation</strong> &#8594; <strong>Assign as Org Default</strong> &#8594; Save & Activate</td>
      </tr>
    </table>
    <div class="note">Alternatively, go to <strong>Setup &#8594; Lightning App Builder</strong>, find each FlexiPage, open it, and use the Activation menu from there.</div>

    <h3>&#9316; Assign Permission Sets to All Users</h3>
    <table>
      <tr><th>Permission Set</th><th>Assign To</th></tr>
      <tr><td>Travel_Request_Employee</td><td>All users who will submit travel requests</td></tr>
      <tr><td>Travel_Request_Manager</td><td>All managers who will approve requests</td></tr>
      <tr><td>Travel_Request_Finance</td><td>Finance team members, system admin, CFO</td></tr>
    </table>
    <div class="note">
      Go to <strong>Setup &#8594; Permission Sets</strong> &#8594; select the permission set &#8594; <strong>Manage Assignments</strong> &#8594; <strong>Add Assignment</strong>. Or use: <code>sf org assign permset --name <PermSetName> --on-behalf-of <username></code>
    </div>

    <h3>&#9317; Build Reports & Dashboard</h3>
    <table>
      <tr><th>Step</th><th>Action</th></tr>
      <tr><td>1</td><td>Go to the <strong>Reports</strong> tab &#8594; create a new folder: <code>Travel Request Reports</code></td></tr>
      <tr><td>2</td><td>Build each of the 5 reports defined in Section 10, saving to the <code>Travel Request Reports</code> folder</td></tr>
      <tr><td>3</td><td>Go to the <strong>Dashboards</strong> tab &#8594; create a new folder: <code>Travel Request Dashboards</code></td></tr>
      <tr><td>4</td><td>Build the <strong>Travel Request Overview</strong> dashboard using the 5 reports as sources (see Section 10 for component details)</td></tr>
    </table>

    <h3>Checklist Summary</h3>
    <table>
      <tr><th>&#9744;</th><th>Task</th><th>Priority</th></tr>
      <tr><td>&#9744;</td><td>Configure OWD in Sharing Settings (Private / Public Read Only)</td><td><strong style="color:#c62828;">Critical — before go-live</strong></td></tr>
      <tr><td>&#9744;</td><td>Build Role Hierarchy (CEO, CFO, Manager, Employee)</td><td><strong style="color:#c62828;">Critical — before go-live</strong></td></tr>
      <tr><td>&#9744;</td><td>Create CFO Approvals Queue and add CFO user</td><td><strong style="color:#c62828;">Critical — before approval use</strong></td></tr>
      <tr><td>&#9744;</td><td>Update Approval Process Step 2 to use CFO Approvals Queue</td><td><strong style="color:#c62828;">Critical — before approval use</strong></td></tr>
      <tr><td>&#9744;</td><td>Activate the Travel_Request_Approval approval process</td><td><strong style="color:#c62828;">Critical — before approval use</strong></td></tr>
      <tr><td>&#9744;</td><td>Assign Lightning Record Pages as org defaults (all 3 objects)</td><td>High</td></tr>
      <tr><td>&#9744;</td><td>Assign permission sets to all org users</td><td>High</td></tr>
      <tr><td>&#9744;</td><td>Build 5 reports in Travel Request Reports folder</td><td>Medium</td></tr>
      <tr><td>&#9744;</td><td>Build Travel Request Overview dashboard</td><td>Medium</td></tr>
    </table>
  </div>

  <footer>
    Travel Request App &mdash; Salesforce Design Plan &mdash; Version 1.1 (As-Built) &mdash; July 2026<br/>
    To save as PDF: Open this file in a browser and use File > Print > Save as PDF
  </footer>

  <script>
    mermaid.initialize({ startOnLoad: true, theme: 'default', securityLevel: 'loose' });
  </script>
</body>
</html>
