import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

listener http:Listener endpoint1 = new (9090);
listener http:Listener endopoint2 = new (9091);

service / on endpoint1, endopoint2 {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
