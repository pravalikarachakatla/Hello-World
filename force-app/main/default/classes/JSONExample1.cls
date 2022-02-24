public class JSONExample1 {
    Integer id1;
    String title;
    Integer userId;
    public static void fetchdata(){
     Http http = new Http();
     HttpRequest request = new HttpRequest();
     request.setEndpoint('https://jsonplaceholder.typicode.com/albums');
     request.setMethod('GET');
     HttpResponse response = http.send(request);
       // If the request is successful, parse the JSON response.
     if(response.getStatusCode() == 200) {
    // Deserialize the JSON string into collections of primitive data types.
   // Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    // Cast the values in the 'animals' key as a list
    // List<Object> results = (List<Object>) JSON.deserializeUntyped(response.getBody());
   // System.debug('Received the following userId:');
 JSONParser   ob = JSON.createParser(response.getBody());
             //System.debug(ob.nextToken());
             while (ob.nextToken() != null) {
                   if (ob.getCurrentToken() == JSONToken.START_ARRAY) {
                          while (ob.nextToken() != null) { 
                              if (ob.getCurrentToken() == JSONToken.START_OBJECT)
                              {
                                  JSONExample1 z=(JSONExample1)ob.readValueAs(JSONExample1.class);
                                  System.debug(z.title);
                              }
                         }
                   }
             }
        }        

    }
    
}