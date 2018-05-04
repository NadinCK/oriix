/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class YodleeResponse extends ints.IntegrationResponseObject {
    global List<ints.YodleeResponse.Cls_account> account;
    global List<ints.YodleeResponse.Cls_accounts> accounts;
    global String applicationId;
    global String cobrandId;
    global String errorCode;
    global String errorMessage;
    global List<ints.YodleeResponse.Cls_finappAuthenticationInfos> finappAuthenticationInfos;
    global ints.YodleeResponse.Cls_links links;
    global String locale;
    global String loginName;
    global List<ints.YodleeResponse.Cls_providerAccount> providerAccount;
    global String referenceCode;
    global ints.YodleeResponse.Cls_segmentInfo segmentInfo;
    global ints.YodleeResponse.Cls_session session;
    global List<ints.YodleeResponse.Cls_statement> statement;
    global String token;
    global List<ints.YodleeResponse.Cls_transactionCategory> transactionCategory;
    global List<ints.YodleeResponse.Cls_transactionSummary> transactionSummary;
    global ints.YodleeResponse.Cls_user user;
    global String userId;
    global ints.YodleeResponse.Cls_users users;
    global String validUntil;
    global YodleeResponse() {

    }
global class Cls_account {
    global List<ints.YodleeResponse.Cls_historicalBalances> historicalBalances;
    global String id;
    global Cls_account() {

    }
}
global class Cls_accounts {
    global String accountsName;
    global String accountsNumber;
    global String accountsStatus;
    global String accountsType;
    global ints.YodleeResponse.Cls_availableBalance availableBalance;
    global ints.YodleeResponse.Cls_balance balance;
    global String CONTAINER;
    global ints.YodleeResponse.Cls_balance currentBalance;
    global String id;
    global Boolean isAsset;
    global String providerAccounstId;
    global String providerId;
    global String providerName;
    global ints.YodleeResponse.Cls_refreshinfo refreshinfo;
    global Cls_accounts() {

    }
}
global class Cls_availableBalance {
    global String amount;
    global String currencys;
    global Cls_availableBalance() {

    }
}
global class Cls_balance {
    global String amount;
    global String currencys;
    global Cls_balance() {

    }
}
global class Cls_categorySummary {
    global String categoryId;
    global String categoryName;
    global ints.YodleeResponse.Cls_debitTotal debitTotal;
    global List<ints.YodleeResponse.Cls_details> details;
    global ints.YodleeResponse.Cls_links links;
    global Cls_categorySummary() {

    }
}
global class Cls_creditTotal {
    global String amount;
    global String currencys;
    global Cls_creditTotal() {

    }
}
global class Cls_debitTotal {
    global String amount;
    global String currencys;
    global Cls_debitTotal() {

    }
}
global class Cls_details {
    global ints.YodleeResponse.Cls_creditTotal creditTotal;
    global String dates;
    global Cls_details() {

    }
}
global class Cls_finappAuthenticationInfos {
    global String finappId;
    global String token;
    global Cls_finappAuthenticationInfos() {

    }
}
global class Cls_historicalBalances {
    global String asOfDate;
    global ints.YodleeResponse.Cls_balance balance;
    global String dataSourceType;
    global String dates;
    global Boolean isAsset;
    global Cls_historicalBalances() {

    }
}
global class Cls_lastPaymentAmount {
    global String amount;
    global String currencys;
    global Cls_lastPaymentAmount() {

    }
}
global class Cls_links {
    global String transactions;
    global Cls_links() {

    }
}
global class Cls_name {
    global String first;
    global String last;
    global Cls_name() {

    }
}
global class Cls_preferences {
    global String currencys;
    global String dateFormat;
    global String locale;
    global String timeZone;
    global Cls_preferences() {

    }
}
global class Cls_providerAccount {
    global String aggregationSource;
    global Integer id;
    global ints.YodleeResponse.Cls_refreshinfo refreshInfo;
    global Cls_providerAccount() {

    }
}
global class Cls_refreshinfo {
    global String lastRefreshAttempt;
    global String lastRefreshed;
    global String nextRefreshScheduled;
    global String status;
    global String statusCode;
    global String statusMessage;
    global Cls_refreshinfo() {

    }
}
global class Cls_segmentInfo {
    global String segmentId;
    global Cls_segmentInfo() {

    }
}
global class Cls_session {
    global String cobSession;
    global Cls_session() {

    }
}
global class Cls_sessions {
    global String userSession;
    global Cls_sessions() {

    }
}
global class Cls_statement {
    global String accountId;
    global String billingPeriodEnd;
    global String billingPeriodStart;
    global String dueDate;
    global String id;
    global Boolean isLatest;
    global ints.YodleeResponse.Cls_lastPaymentAmount lastPaymentAmount;
    global String lastPaymentDate;
    global String lastUpdated;
    global String statementDate;
    global Cls_statement() {

    }
}
global class Cls_transactionCategory {
    global String category;
    global Integer highLevelCategoryId;
    global String highLevelCategoryName;
    global Integer id;
    global String source;
    global String type;
    global Cls_transactionCategory() {

    }
}
global class Cls_transactionSummary {
    global List<ints.YodleeResponse.Cls_categorySummary> categorySummary;
    global String categoryType;
    global ints.YodleeResponse.Cls_creditTotal creditTotal;
    global ints.YodleeResponse.Cls_debitTotal debitTotal;
    global ints.YodleeResponse.Cls_links links;
    global Cls_transactionSummary() {

    }
}
global class Cls_user {
    global String id;
    global String loginName;
    global ints.YodleeResponse.Cls_name name;
    global ints.YodleeResponse.Cls_preferences preferences;
    global ints.YodleeResponse.Cls_sessions session;
    global Cls_user() {

    }
}
global class Cls_users {
    global String email;
    global String id;
    global String loginName;
    global ints.YodleeResponse.Cls_name name;
    global ints.YodleeResponse.Cls_preferences preferences;
    global Cls_users() {

    }
}
}
