/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class UserLoginContainer {
    global String emailAddress;
    global List<ints.UserLoginContainer.ErrorResponse> error;
    global Double lastLoginTime;
    global Double loginCount;
    global String loginName;
    global Boolean passwordRecovered;
    global ints.UserLoginContainer.UserContext userContext;
    global Double userId;
    global ints.UserLoginContainer.UserType userType;
    global UserLoginContainer() {

    }
    global static ints.UserLoginContainer parse(String json) {
        return null;
    }
global class ConversationCredentials {
    global String sessionToken;
    global ConversationCredentials() {

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
    global ints.UserLoginContainer.CurrencyNotationType currencyNotationType;
    global String dateFormat;
    global ints.UserLoginContainer.NumberFormat numberFormat;
    global String timeZone;
    global PreferenceInfo() {

    }
}
global class UserContext {
    global String applicationId;
    global Double channelId;
    global ints.UserLoginContainer.ConversationCredentials cobrandConversationCredentials;
    global Double cobrandId;
    global ints.UserLoginContainer.ConversationCredentials conversationCredentials;
    global Boolean isPasswordExpired;
    global String locale;
    global ints.UserLoginContainer.PreferenceInfo preferenceInfo;
    global Double tncVersion;
    global Boolean valid;
    global UserContext() {

    }
}
global class UserType {
    global Double userTypeId;
    global String userTypeName;
    global UserType() {

    }
}
}
