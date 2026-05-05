public with sharing class ExampleBatch
    implements Database.Batchable<SObject>, Database.Stateful {

    public Database.QueryLocator start(Database.BatchableContext context) {
        return Database.getQueryLocator([
            SELECT Id, Name
            FROM Account
        ]);
    }

    public void execute(Database.BatchableContext context, List<Account> scope) {
        if (scope.isEmpty()) {
            return;
        }

        // Process records in bulk here.
    }

    public void finish(Database.BatchableContext context) {
        // Add summary or follow-up behavior here.
    }
}
