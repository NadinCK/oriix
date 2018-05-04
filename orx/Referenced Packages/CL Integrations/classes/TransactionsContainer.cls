/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class TransactionsContainer {
    global List<ints.TransactionsContainer.ErrorResponse> error;
    global List<ints.TransactionsContainer.Transactions> transactions;
    global TransactionsContainer() {

    }
    global static ints.TransactionsContainer parse(String json) {
        return null;
    }
global class Account {
    global ints.TransactionsContainer.AccountBalance accountBalance;
    global ints.TransactionsContainer.AccountDisplayName accountDisplayName;
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
global class AccountBalance {
    global Double amount;
    global String currencyCode;
    global AccountBalance() {

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
    global Double categoryTypeId;
    global Boolean isBusiness;
    global String localizedCategoryName;
    global Category() {

    }
}
global class CheckNumber {
    global CheckNumber() {

    }
}
global class Description {
    global String description;
    global Boolean isOlbUserDescription;
    global String merchantName;
    global String simpleDescription;
    global String transactionTypeDesc;
    global Boolean viewPref;
    global Description() {

    }
}
global class Description_Z {
    global String description;
    global Boolean isOlbUserDescription;
    global String simpleDescription;
    global Boolean viewPref;
    global Description_Z() {

    }
}
global class ErrorResponse {
    global String errorDetail;
    global ErrorResponse() {

    }
}
global class HoldingType {
    global Double holdingTypeId;
    global HoldingType() {

    }
}
global class InvestmentTransactionView {
    global ints.TransactionsContainer.HoldingType holdingType;
    global ints.TransactionsContainer.LotHandling lotHandling;
    global Double netCost;
    global InvestmentTransactionView() {

    }
}
global class LotHandling {
    global Double lotHandlingId;
    global LotHandling() {

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
    global ints.TransactionsContainer.Account account;
    global ints.TransactionsContainer.Amount amount;
    global Double categorisationSourceId;
    global String categorizationKeyword;
    global ints.TransactionsContainer.Category category;
    global ints.TransactionsContainer.CheckNumber checkNumber;
    global String classUpdationSource;
    global ints.TransactionsContainer.Description description;
    global ints.TransactionsContainer.InvestmentTransactionView investmentTransactionView;
    global Boolean isBusiness;
    global Double isClosingTxn;
    global Boolean isMedical;
    global Boolean isPersonal;
    global Boolean isReimbursable;
    global Boolean isTaxable;
    global String localizedTransactionBaseType;
    global String localizedTransactionType;
    global ints.TransactionsContainer.CheckNumber memo;
    global String postDate;
    global ints.TransactionsContainer.Amount price;
    global Double runningBalance;
    global ints.TransactionsContainer.Status status;
    global String transactionBaseType;
    global Double transactionBaseTypeId;
    global Double transactionPostingOrder;
    global String transactionSearchResultType;
    global String transactionType;
    global Double transactionTypeId;
    global ints.TransactionsContainer.ViewKey viewKey;
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
