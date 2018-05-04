/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CobrandLoginContainer {
    global String applicationId;
    global Double channelId;
    global ints.CobrandLoginContainer.CobrandConversationCredentials cobrandConversationCredentials;
    global Double cobrandId;
    global List<ints.CobrandLoginContainer.ErrorResponse> error;
    global String locale;
    global ints.CobrandLoginContainer.PreferenceInfo preferenceInfo;
    global Double tncVersion;
    global CobrandLoginContainer() {

    }
    global static ints.CobrandLoginContainer parse(String json) {
        return null;
    }
global class CobrandConversationCredentials {
    global String sessionToken;
    global CobrandConversationCredentials() {

    }
}
global class CurrencyNotationType {
    global String currencyNotationType;
    global CurrencyNotationType() {

    }
}
global class ErrorResponse {
    global String errorDetail;
    global ErrorResponse() {

    }
}
global class NumberFormat {
    global String decimalSeparator;
    global String groupingSeparator;
    global String groupPattern;
    global NumberFormat() {

    }
}
global class PreferenceInfo {
    global String currencyCode;
    global ints.CobrandLoginContainer.CurrencyNotationType currencyNotationType;
    global String dateFormat;
    global ints.CobrandLoginContainer.NumberFormat numberFormat;
    global String timeZone;
    global PreferenceInfo() {

    }
}
}
