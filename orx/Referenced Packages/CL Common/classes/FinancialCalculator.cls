/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class FinancialCalculator {
    global FinancialCalculator() {

    }
global class AmortizationSchedule implements System.Comparable {
    global Date dueDate {
        get;
        set;
    }
    global Decimal interestDue {
        get;
        set;
    }
    global Decimal principalDue {
        get;
        set;
    }
    global Integer sequence {
        get;
        set;
    }
    global AmortizationSchedule() {

    }
}
global enum FinancialCalculatorVersion {FinancialCalculatorVersion_V2, FinancialCalculatorVersion_V3, FinancialCalculatorVersion_V3_1}
global class HolidaySchedule implements System.Comparable {
    global Date endDate {
        get;
        set;
    }
    global String holidayType {
        get;
        set;
    }
    global Boolean isRecurring {
        get;
        set;
    }
    global Integer sequence {
        get;
        set;
    }
    global Date startDate {
        get;
        set;
    }
    global HolidaySchedule() {

    }
}
global class ProposedRepaymentSchedule implements System.Comparable {
    global String frequency {
        get;
        set;
    }
    global Decimal moneyIn {
        get;
        set;
    }
    global String paymentType {
        get;
        set;
    }
    global Integer sequence {
        get;
        set;
    }
    global Date startDate {
        get;
        set;
    }
    global Decimal term {
        get;
        set;
    }
    global ProposedRepaymentSchedule() {

    }
}
global class RateSchedule implements System.Comparable {
    global Decimal interestRate {
        get;
        set;
    }
    global Integer sequence {
        get;
        set;
    }
    global Date startDate {
        get;
        set;
    }
    global RateSchedule() {

    }
}
global class RepaymentSchedule {
    global Decimal amount {
        get;
        set;
    }
    global Decimal balance {
        get;
        set;
    }
    global Date billDate {
        get;
        set;
    }
    global Date dueDate {
        get;
    }
    global Decimal fee {
        get;
        set;
    }
    global Decimal interest {
        get;
        set;
    }
    global Decimal interestRoundingError {
        get;
        set;
    }
    global Integer paymentNo {
        get;
    }
    global Decimal principal {
        get;
        set;
    }
}
global class RepaymentStepUpSchedule implements System.Comparable {
    global String frequency {
        get;
        set;
    }
    global Integer sequence {
        get;
        set;
    }
    global Date startDate {
        get;
        set;
    }
    global Decimal stepUpFactor {
        get;
        set;
    }
    global RepaymentStepUpSchedule() {

    }
}
}
