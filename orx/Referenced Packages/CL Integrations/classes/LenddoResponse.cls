/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class LenddoResponse {
    global String client_id;
    global String facebook_photo_url;
    global List<String> flags;
    global String member_id;
    global String message;
    global String partner_id;
    global ints.LenddoResponse.Probes probes;
    global Integer timestamp;
    global ints.LenddoResponse.Verifications verifications;
    global String version;
    global LenddoResponse() {

    }
    global static ints.LenddoResponse parse(String json) {
        return null;
    }
global class Employer {
    global String employer;
    global List<String> end_date;
    global List<String> start_date;
    global Employer() {

    }
}
global class Probes {
    global List<Integer> birthday;
    global List<String> email_verified;
    global ints.LenddoResponse.Employer employer;
    global String external_phone;
    global List<String> facebook_verified;
    global List<String> name;
    global String top_employer;
    global ints.LenddoResponse.University university;
    global Probes() {

    }
}
global class University {
    global String university;
    global University() {

    }
}
global class Verifications {
    global Boolean birthday;
    global Boolean email_verified;
    global Boolean employer;
    global Boolean external_phone;
    global Boolean facebook_verified;
    global Boolean name;
    global Boolean top_employer;
    global Boolean university;
    global Verifications() {

    }
}
}
