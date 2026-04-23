public with sharing class ExampleInvocableAction {
    public class Request {
        @InvocableVariable(required=true)
        public Id recordId;
    }

    public class Response {
        @InvocableVariable
        public String message;
    }

    @InvocableMethod(label='Example Invocable Action')
    public static List<Response> run(List<Request> requests) {
        List<Response> responses = new List<Response>();

        for (Request requestItem : requests) {
            Response responseItem = new Response();
            responseItem.message = 'Processed ' + String.valueOf(requestItem.recordId);
            responses.add(responseItem);
        }

        return responses;
    }
}
