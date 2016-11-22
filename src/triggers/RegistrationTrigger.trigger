trigger RegistrationTrigger on Employee__c (before insert) {
    
    RandomPassword randPass = new RandomPassword(8);
    
    for (Employee__c emp:Trigger.New){
        emp.Password__c = randPass.generatePass();
    }

}