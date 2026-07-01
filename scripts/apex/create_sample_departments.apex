List<Department__c> depts = new List<Department__c>{
    new Department__c(Name='Engineering',            Department_Code__c='ENG'),
    new Department__c(Name='Finance',                Department_Code__c='FIN'),
    new Department__c(Name='Human Resources',        Department_Code__c='HRS'),
    new Department__c(Name='Sales',                  Department_Code__c='SAL'),
    new Department__c(Name='Marketing',              Department_Code__c='MKT'),
    new Department__c(Name='Operations',             Department_Code__c='OPS'),
    new Department__c(Name='Legal',                  Department_Code__c='LEG'),
    new Department__c(Name='Information Technology', Department_Code__c='ITS'),
    new Department__c(Name='Customer Success',       Department_Code__c='CSS'),
    new Department__c(Name='Research Development',   Department_Code__c='RND')
};
insert depts;
System.debug('Inserted ' + depts.size() + ' departments successfully.');