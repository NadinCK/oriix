/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RegisterUserContainer {
    global String emailAddress;
    global Double lastLoginTime;
    global Double loginCount;
    global String loginName;
    global Boolean passwordRecovered;
    global ints.RegisterUserContainer.UserContext userContext;
    global Integer userId;
    global RegisterUserContainer() {

    }
    global static ints.RegisterUserContainer parse(String json) {
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
global class NumberFormat {
    global String decimalSeparator;
    global String groupingSeparator;
    global String groupPattern;
    global NumberFormat() {

    }
}
global class PreferenceInfo {
    global String currencyCode;
    global ints.RegisterUserContainer.CurrencyNotationType currencyNotationType;
    global String dateFormat;
    global ints.RegisterUserContainer.NumberFormat numberFormat;
    global String timeZone;
    global PreferenceInfo() {

    }
}
global class UserContext {
    global String applicationId;
    global Double channelId;
    global ints.RegisterUserContainer.ConversationCredentials cobrandConversationCredentials;
    global Double cobrandId;
    global ints.RegisterUserContainer.ConversationCredentials conversationCredentials;
    global Boolean isPasswordExpired;
    global String locale;
    global ints.RegisterUserContainer.PreferenceInfo preferenceInfo;
    global Double tncVersion;
    global Boolean valid;
    global UserContext() {

    }
}
}
