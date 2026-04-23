@IsTest
private class AccountServiceTest {
    @IsTest
    static void handleAfterInsert_createsFollowUpTasks() {
        Account accountRecord = new Account(Name = 'Acme');
        insert accountRecord;

        Test.startTest();
        AccountService.handleAfterInsert(new Set<Id>{ accountRecord.Id });
        Test.stopTest();

        List<Task> tasks = [
            SELECT Id, WhatId, Subject
            FROM Task
            WHERE WhatId = :accountRecord.Id
        ];

        System.assertEquals(1, tasks.size());
        System.assertEquals('Follow up', tasks[0].Subject);
    }
}
