/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class LoanCalculator_v3 {
    global LoanCalculator_v3(Map<String,Object> inputOptions) {

    }
    global Decimal calculateAPR(clcommon.LoanCalculator_v3.LoanCalculatorInput calc, List<clcommon.FinancialCalculator.AmortizationSchedule> amzSchedule) {
        return null;
    }
    global List<clcommon.FinancialCalculator.RepaymentSchedule> calculateEMI(clcommon.LoanCalculator_v3.LoanCalculatorInput calc, List<clcommon.FinancialCalculator.RateSchedule> rateSchedule, List<clcommon.FinancialCalculator.ProposedRepaymentSchedule> proposedRepaymentPlan) {
        return null;
    }
global class LoanCalculatorInput {
    global String Accrual_Base_Method_Cd_c {
        get;
    }
    global Date Accrual_Start_Date_c {
        get;
    }
    global Integer Accrual_Start_Days_c {
        get;
    }
    global String Action_c {
        get;
    }
    global Decimal Additional_Interest_Amt_c {
        get;
    }
    global Integer Amortization_Term_c {
        get;
    }
    global Decimal Balloon_Payment_Amt_c {
        get;
    }
    global BusinessHours Bank_Hours_c {
        get;
    }
    global String Billing_Method_Cd_c {
        get;
    }
    global Date Contract_Dt_c {
        get;
    }
    global Integer Due_Day_c {
        get;
    }
    global Decimal Financed_Fees_c {
        get;
    }
    global Date First_Payday_Date_c {
        get;
    }
    global Date First_Payment_Dt_c {
        get;
    }
    global String Interest_Compounding_Frequency_c {
        get;
    }
    global Integer Interest_Only_Period_c {
        get;
    }
    global Decimal InterestOnly_Payment_Amt_c {
        get;
    }
    global Date Last_Payment_Date_c {
        get;
    }
    global Decimal Loan_Amt_c {
        get;
    }
    global List<String> log {
        get;
    }
    global List<clcommon.FinancialCalculator.HolidaySchedule> lstHolidaySchedule {
        get;
    }
    global List<clcommon.FinancialCalculator.RepaymentStepUpSchedule> lstRepaymentStepUpSchedule {
        get;
    }
    global Boolean Move_Across_Month_c {
        get;
    }
    global Decimal Payment_Amt_2_c {
        get;
    }
    global Date Payment_Amt_2_Start_dt_c {
        get;
    }
    global Decimal Payment_Amt_c {
        get;
    }
    global String Payment_Amt_Step_Up_Type_c {
        get;
    }
    global String Payment_Frequency_Cd_c {
        get;
    }
    global Integer Payment_Frequency_Multiplier_c {
        get;
    }
    global Decimal Prepaid_Fees_c {
        get;
    }
    global Boolean Principal_Interest_Rounding_On_c {
        get;
    }
    global Decimal Rate_c {
        get;
    }
    global Decimal Recurring_Fee_c {
        get;
    }
    global String Recurring_Fee_Frequency_c {
        get;
    }
    global Date Recurring_Fee_Start_Date_c {
        get;
    }
    global String Recurring_Interest_Only_Payment_Freq_c {
        get;
    }
    global Date Recurring_Interest_Only_Payment_Start_Dt_c {
        get;
    }
    global String Repayment_Procedure_c {
        get;
    }
    global String Schedule_Adjustment_Method_c {
        get;
    }
    global Date Second_Payday_Date_c {
        get;
    }
    global Integer Term_c {
        get;
    }
    global String Time_Counting_Method_Cd_c {
        get;
    }
    global LoanCalculatorInput(Map<String,Object> inputOptions) {

    }
}
}
