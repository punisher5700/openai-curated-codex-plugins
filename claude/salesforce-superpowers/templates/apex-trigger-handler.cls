public with sharing class AccountTriggerHandler {
    public static void beforeInsert(List<Account> newRecords) {
        if (newRecords.isEmpty()) {
            return;
        }

        AccountDomain.applyDefaults(newRecords);
    }

    public static void beforeUpdate(
        Map<Id, Account> oldMap,
        Map<Id, Account> newMap
    ) {
        if (newMap.isEmpty()) {
            return;
        }

        AccountDomain.validateChanges(oldMap, newMap);
    }

    public static void afterInsert(Map<Id, Account> newMap) {
        if (newMap.isEmpty()) {
            return;
        }

        AccountService.handleAfterInsert(newMap.keySet());
    }
}
