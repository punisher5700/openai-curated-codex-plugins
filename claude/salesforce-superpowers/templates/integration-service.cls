public with sharing class ExternalOrderSyncService {
    public static void sendOrders(Set<Id> orderIds) {
        if (orderIds.isEmpty()) {
            return;
        }

        List<Order> orders = [
            SELECT Id, OrderNumber, Status
            FROM Order
            WHERE Id IN :orderIds
        ];

        for (Order orderRecord : orders) {
            HttpRequest request = new HttpRequest();
            request.setEndpoint('callout:External_Order_API/orders');
            request.setMethod('POST');
            request.setHeader('Content-Type', 'application/json');
            request.setBody(JSON.serialize(orderRecord));

            Http http = new Http();
            HttpResponse response = http.send(request);

            if (response.getStatusCode() >= 300) {
                // Replace with structured retry and logging strategy.
                throw new CalloutException('Order sync failed for ' + orderRecord.Id);
            }
        }
    }
}
