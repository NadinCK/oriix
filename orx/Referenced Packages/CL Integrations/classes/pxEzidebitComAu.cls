/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class pxEzidebitComAu {
    global pxEzidebitComAu() {

    }
global class ArrayOfCustomerFee {
    global List<ints.pxEzidebitComAu.CustomerFee> CustomerFee;
    global ArrayOfCustomerFee() {

    }
}
global class ArrayOfPayment {
    global List<ints.pxEzidebitComAu.Payment> Payment;
    global ArrayOfPayment() {

    }
}
global class ArrayOfScheduledPayment {
    global List<ints.pxEzidebitComAu.ScheduledPayment> ScheduledPayment;
    global ArrayOfScheduledPayment() {

    }
}
global class Customer {
    global String AddressLine1;
    global String AddressLine2;
    global String AddressPostCode;
    global String AddressState;
    global String AddressSuburb;
    global Datetime ContractStartDate;
    global String CustomerFirstName;
    global String CustomerName;
    global String Email;
    global String EzidebitCustomerID;
    global String MobilePhone;
    global String PaymentMethod;
    global String PaymentPeriod;
    global String PaymentPeriodDayOfMonth;
    global String PaymentPeriodDayOfWeek;
    global String SmsExpiredCard;
    global String SmsFailedNotification;
    global String SmsPaymentReminder;
    global String StatusCode;
    global String StatusDescription;
    global Integer TotalPaymentsFailed;
    global Double TotalPaymentsFailedAmount;
    global Integer TotalPaymentsSuccessful;
    global Double TotalPaymentsSuccessfulAmount;
    global String YourGeneralReference;
    global String YourSystemReference;
    global Customer() {

    }
}
global class CustomerDetails {
    global String AddressLine1;
    global String AddressLine2;
    global String AddressPostCode;
    global String AddressState;
    global String AddressSuburb;
    global Datetime ContractStartDate;
    global String CustomerFirstName;
    global String CustomerName;
    global String Email;
    global String EzidebitCustomerID;
    global String MobilePhone;
    global String PaymentMethod;
    global String PaymentPeriod;
    global String PaymentPeriodDayOfMonth;
    global String PaymentPeriodDayOfWeek;
    global String SmsExpiredCard;
    global String SmsFailedNotification;
    global String SmsPaymentReminder;
    global String StatusCode;
    global String StatusDescription;
    global Integer TotalPaymentsFailed;
    global Double TotalPaymentsFailedAmount;
    global Integer TotalPaymentsSuccessful;
    global Double TotalPaymentsSuccessfulAmount;
    global String YourGeneralReference;
    global String YourSystemReference;
    global CustomerDetails() {

    }
}
global class CustomerFee {
    global String EzidebitCustomerID;
    global Double FeeAmount;
    global Double FeeMaximumAmount;
    global Double FeeMinimumAmount;
    global String FeeName;
    global Double FeePercent;
    global String ProductName;
    global String ProductVariant;
    global String YourSystemReference;
    global CustomerFee() {

    }
}
global class Data {
    global String BPayBillerCode;
    global String BPayCRN;
    global Data() {

    }
}
global class EziResponseOfArrayOfCustomerFeeTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.ArrayOfCustomerFee Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfArrayOfCustomerFeeTHgMB7oL() {

    }
}
global class EziResponseOfArrayOfCustomerTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.ArrayOfCustomer Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfArrayOfCustomerTHgMB7oL() {

    }
}
global class EziResponseOfArrayOfPaymentTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.ArrayOfPayment Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfArrayOfPaymentTHgMB7oL() {

    }
}
global class EziResponseOfArrayOfScheduledPaymentTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.ArrayOfScheduledPayment Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfArrayOfScheduledPaymentTHgMB7oL() {

    }
}
global class EziResponseOfCustomerDetailsTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.CustomerDetails Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfCustomerDetailsTHgMB7oL() {

    }
}
global class EziResponseOfNewCustomerXcXH3liW extends ints.IntegrationResponseObject {
    global ints.schemasDatacontractOrg200407Ezidebi.NewCustomer Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfNewCustomerXcXH3liW() {

    }
}
global class EziResponseOfPaymentDetailTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.PaymentDetail Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfPaymentDetailTHgMB7oL() {

    }
}
global class EziResponseOfRefundPaymentTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu.RefundPayment Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfRefundPaymentTHgMB7oL() {

    }
}
global class EziResponseOfstring extends ints.IntegrationResponseObject {
    global String Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfstring() {

    }
}
global class Payment {
    global String BankFailedReason;
    global String BankReceiptID;
    global String BankReturnCode;
    global String CustomerName;
    global Datetime DebitDate;
    global String EzidebitCustomerID;
    global String InvoiceID;
    global Double PaymentAmount;
    global String PaymentID;
    global String PaymentMethod;
    global String PaymentReference;
    global String PaymentSource;
    global String PaymentStatus;
    global Double ScheduledAmount;
    global Datetime SettlementDate;
    global Double TransactionFeeClient;
    global Double TransactionFeeCustomer;
    global Datetime TransactionTime;
    global String YourGeneralReference;
    global String YourSystemReference;
    global Payment() {

    }
}
global class PaymentDetail {
    global String BankFailedReason;
    global String BankReturnCode;
    global Datetime DebitDate;
    global String InvoiceID;
    global Double PaymentAmount;
    global String PaymentID;
    global String PaymentMethod;
    global String PaymentReference;
    global String PaymentStatus;
    global Double ScheduledAmount;
    global Datetime SettlementDate;
    global Double TransactionFeeClient;
    global Double TransactionFeeCustomer;
    global String YourGeneralReference;
    global String YourSystemReference;
    global PaymentDetail() {

    }
}
global class PaymentDetailPlusNextPaymentInfo {
    global ints.pxEzidebitComAu.NextPaymentInfo NextPaymentInfo;
    global ints.pxEzidebitComAu.PaymentDetail PaymentDetail;
    global PaymentDetailPlusNextPaymentInfo() {

    }
}
global class RefundPayment {
    global Integer BankReceiptID;
    global Integer RefundPaymentID;
    global String RefundResult;
    global String RefundResultCode;
    global String RefundResultText;
    global RefundPayment() {

    }
}
global class ScheduledPayment {
    global String EzidebitCustomerID;
    global Boolean ManuallyAddedPayment;
    global Double PaymentAmount;
    global Datetime PaymentDate;
    global String PaymentReference;
    global String YourGeneralReference;
    global String YourSystemReference;
    global ScheduledPayment() {

    }
}
global class TestFunctionResponse_element {
    global ints.pxEzidebitComAu.EziResponseOfstring TestFunctionResult;
    global TestFunctionResponse_element() {

    }
}
global class TestFunction_element {
    global String ParameterToTest;
    global TestFunction_element() {

    }
}
}
