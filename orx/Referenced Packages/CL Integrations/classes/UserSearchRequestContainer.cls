/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class UserSearchRequestContainer {
    global Double countOfAllTransaction;
    global Double countOfProjectedTxns;
    global ints.UserSearchRequestContainer.Amount creditTotalOfProjectedTxns;
    global ints.UserSearchRequestContainer.Amount creditTotalOfTxns;
    global ints.UserSearchRequestContainer.Amount debitTotalOfProjectedTxns;
    global ints.UserSearchRequestContainer.Amount debitTotalOfTxns;
    global String errorOccurred;
    global String exceptionType;
    global String message;
    global Double numberOfHits;
    global String referenceCode;
    global ints.UserSearchRequestContainer.SearchIdentifier searchIdentifier;
    global ints.UserSearchRequestContainer.SearchResult searchResult;
    global UserSearchRequestContainer() {

    }
    global static ints.UserSearchRequestContainer parse(String json) {
        return null;
    }
global class Account {
    global ints.UserSearchRequestContainer.Amount accountBalance;
    global ints.UserSearchRequestContainer.AccountDisplayName accountDisplayName;
    global String accountName;
    global String accountNumber;
    global Boolean decryptionStatus;
    global Double isAccountName;
    global Double itemAccountId;
    global Double itemAccountStatusId;
    global String siteName;
    global Double sumInfoId;
    global Account() {

    }
}
global class AccountDisplayName {
    global String defaultNormalAccountName;
    global AccountDisplayName() {

    }
}
global class Amount {
    global Double amount;
    global String currencyCode;
    global Amount() {

    }
}
global class Category {
    global Double categoryId;
    global String categoryName;
    global String localizedCategoryName;
    global Category() {

    }
}
global class CheckNumber {
    global String checkNumber;
    global CheckNumber() {

    }
}
global class Description {
    global String description;
    global Boolean isOlbUserDescription;
    global String simpleDescription;
    global Boolean viewPref;
    global Description() {

    }
}
global class HoldingType {
    global Double holdingTypeId;
    global HoldingType() {

    }
}
global class InvestmentTransactionView {
    global ints.UserSearchRequestContainer.HoldingType holdingType;
    global ints.UserSearchRequestContainer.LotHandling lotHandling;
    global Double netCost;
    global InvestmentTransactionView() {

    }
}
global class LotHandling {
    global Double lotHandlingId;
    global LotHandling() {

    }
}
global class Memo {
    global Memo() {

    }
}
global class SearchIdentifier {
    global String identifier;
    global SearchIdentifier() {

    }
}
global class SearchResult {
    global List<ints.UserSearchRequestContainer.Transactions> transactions;
    global SearchResult() {

    }
}
global class Status {
    global String description;
    global String localizedDescription;
    global Double statusId;
    global Status() {

    }
}
global class Transactions {
    global Double accessLevelRequired;
    global ints.UserSearchRequestContainer.Account account;
    global ints.UserSearchRequestContainer.Amount amount;
    global Double categorisationSourceId;
    global ints.UserSearchRequestContainer.Category category;
    global ints.UserSearchRequestContainer.CheckNumber checkNumber;
    global String classUpdationSource;
    global ints.UserSearchRequestContainer.Description description;
    global ints.UserSearchRequestContainer.InvestmentTransactionView investmentTransactionView;
    global Boolean isBusiness;
    global Boolean isMedical;
    global Boolean isPersonal;
    global Boolean isReimbursable;
    global Boolean isTaxable;
    global String link;
    global String localizedTransactionBaseType;
    global String localizedTransactionType;
    global ints.UserSearchRequestContainer.Memo memo;
    global String postDate;
    global ints.UserSearchRequestContainer.Amount price;
    global Double runningBalance;
    global ints.UserSearchRequestContainer.Status status;
    global String transactionBaseType;
    global Double transactionBaseTypeId;
    global String transactionDate;
    global Double transactionPostingOrder;
    global String transactionSearchResultType;
    global String transactionType;
    global Double transactionTypeId;
    global ints.UserSearchRequestContainer.ViewKey viewKey;
    global Transactions() {

    }
}
global class ViewKey {
    global String containerType;
    global Boolean isParentMatch;
    global Boolean isSystemGeneratedSplit;
    global Double rowNumber;
    global Double transactionCount;
    global Double transactionId;
    global ViewKey() {

    }
}
}
