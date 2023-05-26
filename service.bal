import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

listener http:Listener endpoint1 = new (9090);
listener http:Listener endpoint2 = new (9091);

service / on endpoint1 {
    resource function get greetingA(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

service / on endpoint2 {
    resource function get greetingB(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
