public with sharing class AccountService {
    public static void handleAfterInsert(Set<Id> accountIds) {
        if (accountIds.isEmpty()) {
            return;
        }

        List<Account> accounts = AccountSelector.selectByIds(accountIds);
        List<Task> tasksToInsert = new List<Task>();

        for (Account accountRecord : accounts) {
            tasksToInsert.add(new Task(
                Subject = 'Follow up',
                WhatId = accountRecord.Id,
                Status = 'Not Started',
                Priority = 'Normal'
            ));
        }

        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }
    }
}
