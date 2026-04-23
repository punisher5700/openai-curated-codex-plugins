public with sharing class ExampleQueueable implements Queueable, Database.AllowsCallouts {
    private final Set<Id> recordIds;

    public ExampleQueueable(Set<Id> recordIds) {
        this.recordIds = recordIds == null ? new Set<Id>() : recordIds.clone();
    }

    public void execute(QueueableContext context) {
        if (recordIds.isEmpty()) {
            return;
        }

        List<Account> accounts = AccountSelector.selectByIds(recordIds);
        // Add async-safe processing here.
    }
}
