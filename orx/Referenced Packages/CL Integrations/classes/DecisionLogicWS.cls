/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DecisionLogicWS {
    global DecisionLogicWS() {

    }
global class AccountExpense4 {
    global Decimal Amount;
    global String Category;
    global Double Percent;
    global AccountExpense4() {

    }
}
global class ArrayOfAccountExpense4 {
    global List<ints.DecisionLogicWS.AccountExpense4> AccountExpense4;
    global ArrayOfAccountExpense4() {

    }
}
global class ArrayOfTransactionAnalysisSummary4 {
    global List<ints.DecisionLogicWS.TransactionAnalysisSummary4> TransactionAnalysisSummary4;
    global ArrayOfTransactionAnalysisSummary4() {

    }
}
global class ArrayOfTransactionSummary4 {
    global List<ints.DecisionLogicWS.TransactionSummary4> TransactionSummary4;
    global ArrayOfTransactionSummary4() {

    }
}
global class ReportDetail4 extends ints.IntegrationResponseObject {
    global ints.DecisionLogicWS.ArrayOfAccountExpense4 AccountExpenses;
    global String AccountName;
    global Integer AccountNumberConfidence;
    global String AccountNumberEntered;
    global String AccountNumberFound;
    global String AccountType;
    global Datetime ActivityEndDate;
    global Datetime ActivityStartDate;
    global Double AmountInput;
    global Datetime AsOfDate;
    global Double AvailableBalance;
    global Double AverageBalance;
    global Double AverageBalanceRecent;
    global Integer ChartsId;
    global Double CurrentBalance;
    global String CustomerIdentifier;
    global String EmailAddress;
    global String ErrorMessage;
    global String InstitutionName;
    global Boolean IsACHSupported;
    global Boolean IsActivityAvailable;
    global Boolean IsCompleted;
    global Boolean IsError;
    global Boolean IsLoginValid;
    global Boolean IsStarted;
    global Boolean IsVerified;
    global String LastRefreshErrorMessage;
    global Integer NameConfidence;
    global String NameEntered;
    global String NameFound;
    global String Notes;
    global Integer ProcessedStatus;
    global String RequestCode;
    global String RoutingNumberEntered;
    global Integer Status;
    global String StatusCodeColor;
    global String StatusText;
    global Double TotalCredits;
    global Double TotalDebits;
    global ints.DecisionLogicWS.ArrayOfTransactionAnalysisSummary4 TransactionAnalysisSummaries;
    global ints.DecisionLogicWS.ArrayOfTransactionSummary4 TransactionSummaries;
    global ReportDetail4() {

    }
}
global class TransactionAnalysisSummary4 {
    global Double RecentAmount;
    global Integer RecentCount;
    global Double TotalAmount;
    global Integer TotalCount;
    global String TypeCode;
    global String TypeName;
    global TransactionAnalysisSummary4() {

    }
}
global class TransactionSummary4 {
    global Double Amount;
    global String Category;
    global String Description;
    global Boolean IsRefresh;
    global Double RunningBalance;
    global String Status;
    global Datetime TransactionDate;
    global String TypeCodes;
    global TransactionSummary4() {

    }
}
}
