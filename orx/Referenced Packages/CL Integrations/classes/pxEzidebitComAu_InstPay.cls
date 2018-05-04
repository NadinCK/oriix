/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class pxEzidebitComAu_InstPay {
    global pxEzidebitComAu_InstPay() {

    }
global class AccountDetails {
    global String AccountHolderName;
    global String AccountNumber;
    global String BSB;
    global String CardHolderName;
    global String CreditCardNumber;
    global Integer ExpiryMonth;
    global Integer ExpiryYear;
    global String PaymentMethod;
    global AccountDetails() {

    }
}
global class EziResponseOfAccountDetailsTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu_InstPay.AccountDetails Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfAccountDetailsTHgMB7oL() {

    }
}
global class EziResponseOfNewCustomerXcXH3liW extends ints.IntegrationResponseObject {
    global ints.schemasDatacontractOrg200407Ezidebi_IPay.NewCustomer Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfNewCustomerXcXH3liW() {

    }
}
global class EziResponseOfRealtimePaymentResponseTHgMB7oL extends ints.IntegrationResponseObject {
    global ints.pxEzidebitComAu_InstPay.RealtimePaymentResponse Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfRealtimePaymentResponseTHgMB7oL() {

    }
}
global class EziResponseOfString extends ints.IntegrationResponseObject {
    global String Data;
    global Integer Error;
    global String ErrorMessage;
    global EziResponseOfString() {

    }
}
global class RealtimePaymentResponse {
    global String BankReceiptID;
    global String ExchangePaymentID;
    global String PaymentResult;
    global String PaymentResultCode;
    global String PaymentResultText;
    global RealtimePaymentResponse() {

    }
}
}
