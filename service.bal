import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.

listener http:Listener endpoint1 = new (9090);
listener http:Listener endpoint2 = new (9091);

service /a on endpoint1 {
    resource function get greetingA(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
    
    resource function get greetingA1(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
    
    resource function get greetingA2(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
    
    resource function get greetingA3(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}

service /b on endpoint2 {
    resource function get greetingB(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
    
    resource function get greetingB1(string name) returns string|error {
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
