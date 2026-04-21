public inherited sharing class AccountSelector {
    public static List<Account> selectByIds(Set<Id> accountIds) {
        if (accountIds.isEmpty()) {
            return new List<Account>();
        }

        return [
            SELECT Id, Name, OwnerId
            FROM Account
            WHERE Id IN :accountIds
        ];
    }
}
