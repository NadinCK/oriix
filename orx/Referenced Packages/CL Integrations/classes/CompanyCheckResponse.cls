/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CompanyCheckResponse extends ints.IntegrationResponseObject {
    global List<ints.CompanyCheckResponse.Commentaries> commentaries {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.CompanyHistory> companyHistory {
        get;
        set;
    }
    global ints.CompanyCheckResponse.CompanyIdentification companyIdentification {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.CompanyLimitHistories> companyLimitHistories {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.CompanyRatingHistories> companyRatingHistories {
        get;
        set;
    }
    global ints.CompanyCheckResponse.CompanySummary companySummary {
        get;
        set;
    }
    global ints.CompanyCheckResponse.ContactInformation contactInformation {
        get;
        set;
    }
    global ints.CompanyCheckResponse.CountyCourtJudgements countyCourtJudgements {
        get;
        set;
    }
    global ints.CompanyCheckResponse.CreditScore creditScore {
        get;
        set;
    }
    global ints.CompanyCheckResponse.Directors directors {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.FinancialStatements> financialStatements {
        get;
        set;
    }
    global ints.CompanyCheckResponse.GroupStructure groupStructure {
        get;
        set;
    }
    global ints.CompanyCheckResponse.MortgageInformation mortgageInformation {
        get;
        set;
    }
    global ints.CompanyCheckResponse.PaymentData paymentData {
        get;
        set;
    }
    global ints.CompanyCheckResponse.SecondaryData secondaryData {
        get;
        set;
    }
    global ints.CompanyCheckResponse.ShareCapitalStructure shareCapitalStructure {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.ShareDetails> shareDetails {
        get;
        set;
    }
    global CompanyCheckResponse(System.JSONParser parser) {

    }
    global CompanyCheckResponse(String status, Integer statusCode, String body) {

    }
    global static void consumeObject(System.JSONParser parser) {

    }
    global static ints.CompanyCheckResponse parse(String json) {
        return null;
    }
global class BalanceSheet {
    global String bankLoansAndOverdrafts {
        get;
        set;
    }
    global String bankLoansAndOverdraftsAndLTL {
        get;
        set;
    }
    global String cash {
        get;
        set;
    }
    global String IntangibleAssets {
        get;
        set;
    }
    global String miscellaneousCurrentAssets {
        get;
        set;
    }
    global String miscellaneousCurrentLiabilities {
        get;
        set;
    }
    global String otherDebtors {
        get;
        set;
    }
    global String otherLongTermFinance {
        get;
        set;
    }
    global String otherShortTermFinance {
        get;
        set;
    }
    global String stock {
        get;
        set;
    }
    global String tangibleAccounts {
        get;
        set;
    }
    global String totalCurrentAssets {
        get;
        set;
    }
    global String totalCurrentLiabilities {
        get;
        set;
    }
    global String totalFixedAssets {
        get;
        set;
    }
    global String totalLongTermFinance {
        get;
        set;
    }
    global String tradeCreditors {
        get;
        set;
    }
    global String tradeDebtors {
        get;
        set;
    }
    global BalanceSheet(System.JSONParser parser) {

    }
}
global class BasicInformation {
    global String businessName {
        get;
        set;
    }
    global String companyRegistrationDate {
        get;
        set;
    }
    global String companyRegistrationNumber {
        get;
        set;
    }
    global String companyStatus {
        get;
        set;
    }
    global String contactAddress {
        get;
        set;
    }
    global String contactTelephoneNumber {
        get;
        set;
    }
    global String country {
        get;
        set;
    }
    global String legalForm {
        get;
        set;
    }
    global String principalActivity {
        get;
        set;
    }
    global String startOperationsDate {
        get;
        set;
    }
    global BasicInformation(System.JSONParser parser) {

    }
}
global class CapitalAndReserves {
    global String calledUpSharedCapital {
        get;
        set;
    }
    global String PAndLAccountReserve {
        get;
        set;
    }
    global String revaluationReserve {
        get;
        set;
    }
    global String shareholderFunds {
        get;
        set;
    }
    global String sundryReserves {
        get;
        set;
    }
    global CapitalAndReserves(System.JSONParser parser) {

    }
}
global class Cash {
    global String increaseInCash {
        get;
        set;
    }
    global String netCashFlowBeforeFinancing {
        get;
        set;
    }
    global String netCashFlowFromFinancing {
        get;
        set;
    }
    global String netCashFlowFromOperations {
        get;
        set;
    }
    global Cash(System.JSONParser parser) {

    }
}
global class Commentaries {
    global String commentaryText {
        get;
        set;
    }
    global String positiveOrNegative {
        get;
        set;
    }
    global String priority {
        get;
        set;
    }
    global Commentaries(System.JSONParser parser) {

    }
}
global class CompanyHistory {
    global String companyHistoryDate {
        get;
        set;
    }
    global String description {
        get;
        set;
    }
    global CompanyHistory(System.JSONParser parser) {

    }
}
global class CompanyIdentification {
    global ints.CompanyCheckResponse.BasicInformation basicInformation {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.PreviousLegalForms> previousLegalForms {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.PreviousNames> previousNames {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.SicCodes> sicCodes {
        get;
        set;
    }
    global CompanyIdentification(System.JSONParser parser) {

    }
}
global class CompanyLimitHistories {
    global String companyNumber {
        get;
        set;
    }
    global String limit_Z {
        get;
        set;
    }
    global String limitDate {
        get;
        set;
    }
    global String limitDateOrder {
        get;
        set;
    }
    global CompanyLimitHistories(System.JSONParser parser) {

    }
}
global class CompanyRatingHistories {
    global String companyNumber {
        get;
        set;
    }
    global String description {
        get;
        set;
    }
    global String rating {
        get;
        set;
    }
    global String ratingDate {
        get;
        set;
    }
    global String ratingDateOrder {
        get;
        set;
    }
    global String shortDescription {
        get;
        set;
    }
    global CompanyRatingHistories(System.JSONParser parser) {

    }
}
global class CompanySummary {
    global Object alpha {
        get;
        set;
    }
    global String businessName {
        get;
        set;
    }
    global String country {
        get;
        set;
    }
    global String creditLimit {
        get;
        set;
    }
    global String creditRating {
        get;
        set;
    }
    global ints.CompanyCheckResponse.LatestAccount latestAccount {
        get;
        set;
    }
    global String latestShareholdersEquityFigure {
        get;
        set;
    }
    global String latestTurnoverFigure {
        get;
        set;
    }
    global ints.CompanyCheckResponse.MainActivity mainActivity {
        get;
        set;
    }
    global String ratingDescription {
        get;
        set;
    }
    global String registrationNumber {
        get;
        set;
    }
    global String returnLastMadeUpDate {
        get;
        set;
    }
    global CompanySummary(System.JSONParser parser) {

    }
}
global class ContactInformation {
    global ints.CompanyCheckResponse.RegisteredAddress registeredAddress {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.TradingAddresses> tradingAddresses {
        get;
        set;
    }
    global List<String> websites {
        get;
        set;
    }
    global ContactInformation(System.JSONParser parser) {

    }
}
global class CountyCourtJudgements {
    global List<ints.CompanyCheckResponse.PreviousLegalForms> exact {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.PreviousLegalForms> possible {
        get;
        set;
    }
    global CountyCourtJudgements(System.JSONParser parser) {

    }
}
global class CreditScore {
    global String currentCreditLimit {
        get;
        set;
    }
    global Integer currentCreditRating {
        get;
        set;
    }
    global String currentRatingDescription {
        get;
        set;
    }
    global String dateOfLatestRatingChange {
        get;
        set;
    }
    global String previousCreditLimit {
        get;
        set;
    }
    global Integer previousCreditRating {
        get;
        set;
    }
    global String previousRatingDescription {
        get;
        set;
    }
    global CreditScore(System.JSONParser parser) {

    }
}
global class CurrentDirectors {
    global String address {
        get;
        set;
    }
    global String appointmentDate {
        get;
        set;
    }
    global String currentDirectorships {
        get;
        set;
    }
    global String dateOfBirth {
        get;
        set;
    }
    global String gender {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global String pnr {
        get;
        set;
    }
    global String position {
        get;
        set;
    }
    global String previousDirectorships {
        get;
        set;
    }
    global String resignationDate {
        get;
        set;
    }
    global String totalDirectorships {
        get;
        set;
    }
    global CurrentDirectors(System.JSONParser parser) {

    }
}
global class Directors {
    global List<ints.CompanyCheckResponse.CurrentDirectors> currentDirectors {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.CurrentDirectors> previousDirectors {
        get;
        set;
    }
    global Directors(System.JSONParser parser) {

    }
}
global class FinancialStatements {
    global ints.CompanyCheckResponse.BalanceSheet balanceSheet {
        get;
        set;
    }
    global ints.CompanyCheckResponse.CapitalAndReserves capitalAndReserves {
        get;
        set;
    }
    global ints.CompanyCheckResponse.Cash cash {
        get;
        set;
    }
    global ints.CompanyCheckResponse.Miscellaneous miscellaneous {
        get;
        set;
    }
    global ints.CompanyCheckResponse.OtherFinancials otherFinancials {
        get;
        set;
    }
    global ints.CompanyCheckResponse.ProfitAndLoss profitAndLoss {
        get;
        set;
    }
    global ints.CompanyCheckResponse.Ratios ratios {
        get;
        set;
    }
    global ints.CompanyCheckResponse.Summary summary {
        get;
        set;
    }
    global String yearEndDate {
        get;
        set;
    }
    global String yearEndDateOrder {
        get;
        set;
    }
    global FinancialStatements(System.JSONParser parser) {

    }
}
global class GroupStructure {
    global List<ints.CompanyCheckResponse.PreviousLegalForms> subsidiaries {
        get;
        set;
    }
    global ints.CompanyCheckResponse.UltimateParent ultimateParent {
        get;
        set;
    }
    global GroupStructure(System.JSONParser parser) {

    }
}
global class LatestAccount {
    global String accountCategory {
        get;
        set;
    }
    global String accountLastMadeUpDate {
        get;
        set;
    }
    global String accountNextDueDate {
        get;
        set;
    }
    global String accountRefDay {
        get;
        set;
    }
    global String accountRefMonth {
        get;
        set;
    }
    global LatestAccount(System.JSONParser parser) {

    }
}
global class MainActivity {
    global String activityCode {
        get;
        set;
    }
    global String activityDescription {
        get;
        set;
    }
    global MainActivity(System.JSONParser parser) {

    }
}
global class Miscellaneous {
    global String auditorComments {
        get;
        set;
    }
    global String auditors {
        get;
        set;
    }
    global String bankBranchCode {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.PreviousLegalForms> bankers {
        get;
        set;
    }
    global String capitalEmployed {
        get;
        set;
    }
    global String contingentLiability {
        get;
        set;
    }
    global String numberOfEmployees {
        get;
        set;
    }
    global Miscellaneous(System.JSONParser parser) {

    }
}
global class MortgageInformation {
    global Object mortgageDetails {
        get;
        set;
    }
    global Object mortgageSummary {
        get;
        set;
    }
    global MortgageInformation(System.JSONParser parser) {

    }
}
global class OtherFinancials {
    global String netAssets {
        get;
        set;
    }
    global String netWorth {
        get;
        set;
    }
    global String totalAssets {
        get;
        set;
    }
    global String totalLiabilities {
        get;
        set;
    }
    global String workingCapital {
        get;
        set;
    }
    global OtherFinancials(System.JSONParser parser) {

    }
}
global class PaymentData {
    global Integer averageDBT {
        get;
        set;
    }
    global String totalNoofInvoicesAvailable {
        get;
        set;
    }
    global String totalNoofInvoicesOwingAfter30DaysDue {
        get;
        set;
    }
    global String totalNoofInvoicesOwingBefore30DaysDue {
        get;
        set;
    }
    global String totalNoofInvoicesPaidAfter30DaysDue {
        get;
        set;
    }
    global String totalNoofInvoicesPaidBefore30DaysDue {
        get;
        set;
    }
    global PaymentData(System.JSONParser parser) {

    }
}
global class PreviousLegalForms {
    global PreviousLegalForms(System.JSONParser parser) {

    }
}
global class PreviousNames {
    global String dateChanged {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global PreviousNames(System.JSONParser parser) {

    }
}
global class ProfitAndLoss {
    global String auditFees {
        get;
        set;
    }
    global String costOfSales {
        get;
        set;
    }
    global String depreciation {
        get;
        set;
    }
    global String directorsEmoluments {
        get;
        set;
    }
    global String dividends {
        get;
        set;
    }
    global String export_Z {
        get;
        set;
    }
    global String grossProfit {
        get;
        set;
    }
    global String interestPayments {
        get;
        set;
    }
    global String operatingProfit {
        get;
        set;
    }
    global String preTaxProfit {
        get;
        set;
    }
    global String profitAfterTax {
        get;
        set;
    }
    global String retainedProfit {
        get;
        set;
    }
    global String taxation {
        get;
        set;
    }
    global String turnover {
        get;
        set;
    }
    global String wagesAndSalaries {
        get;
        set;
    }
    global ProfitAndLoss(System.JSONParser parser) {

    }
}
global class Ratios {
    global Integer creditorDays {
        get;
        set;
    }
    global Integer currentDebtRatio {
        get;
        set;
    }
    global Integer currentRatio {
        get;
        set;
    }
    global Integer debtorDays {
        get;
        set;
    }
    global Integer equityInPercentage {
        get;
        set;
    }
    global Integer gearing {
        get;
        set;
    }
    global Integer liquidityRatioOrAcidTest {
        get;
        set;
    }
    global Double preTaxProfitMargin {
        get;
        set;
    }
    global Double returnOnCapitalEmployed {
        get;
        set;
    }
    global Double returnOnNetAssetsEmployed {
        get;
        set;
    }
    global Double returnOnTotalAssetsEmployed {
        get;
        set;
    }
    global Integer salesOrNetWorkingCapital {
        get;
        set;
    }
    global Integer stockTurnoverRatio {
        get;
        set;
    }
    global Integer totalDebtRatio {
        get;
        set;
    }
    global Ratios(System.JSONParser parser) {

    }
}
global class RegisteredAddress {
    global String address {
        get;
        set;
    }
    global String address1 {
        get;
        set;
    }
    global String address2 {
        get;
        set;
    }
    global Object address3 {
        get;
        set;
    }
    global Object address4 {
        get;
        set;
    }
    global String postcode {
        get;
        set;
    }
    global String telephone {
        get;
        set;
    }
    global RegisteredAddress(System.JSONParser parser) {

    }
}
global class SecondaryData {
    global String businessClassification {
        get;
        set;
    }
    global String contactName {
        get;
        set;
    }
    global String emailAddress {
        get;
        set;
    }
    global String facebook {
        get;
        set;
    }
    global String faxNumber {
        get;
        set;
    }
    global String googlePlus {
        get;
        set;
    }
    global String linkedIn {
        get;
        set;
    }
    global String telephoneNumber {
        get;
        set;
    }
    global String twitter {
        get;
        set;
    }
    global String webAddress {
        get;
        set;
    }
    global SecondaryData(System.JSONParser parser) {

    }
}
global class ShareCapitalStructure {
    global String issuedShareCapital {
        get;
        set;
    }
    global String nominalShareCapital {
        get;
        set;
    }
    global List<ints.CompanyCheckResponse.ShareHolders> shareHolders {
        get;
        set;
    }
    global ShareCapitalStructure(System.JSONParser parser) {

    }
}
global class ShareDetails {
    global String add1 {
        get;
        set;
    }
    global String add2 {
        get;
        set;
    }
    global String add3 {
        get;
        set;
    }
    global String add4 {
        get;
        set;
    }
    global String add5 {
        get;
        set;
    }
    global String companyNumber {
        get;
        set;
    }
    global String forename {
        get;
        set;
    }
    global Integer number_Z {
        get;
        set;
    }
    global String post {
        get;
        set;
    }
    global String shareClass {
        get;
        set;
    }
    global String shareDetailsCurrency {
        get;
        set;
    }
    global String shareholderType {
        get;
        set;
    }
    global String shareType {
        get;
        set;
    }
    global String surname {
        get;
        set;
    }
    global String title {
        get;
        set;
    }
    global Integer value {
        get;
        set;
    }
    global ShareDetails(System.JSONParser parser) {

    }
}
global class ShareHolders {
    global String address {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global String sharePercent {
        get;
        set;
    }
    global ShareHolders(System.JSONParser parser) {

    }
}
global class SicCodes {
    global String sicCode2003 {
        get;
        set;
    }
    global String sicCode2003Description {
        get;
        set;
    }
    global String sicCode2007 {
        get;
        set;
    }
    global String sicCode2007Description {
        get;
        set;
    }
    global SicCodes(System.JSONParser parser) {

    }
}
global class Summary {
    global String consolidatedAccounts {
        get;
        set;
    }
    global String numberOfWeeks {
        get;
        set;
    }
    global String summaryCurrency {
        get;
        set;
    }
    global Summary(System.JSONParser parser) {

    }
}
global class TradingAddresses {
    global String address {
        get;
        set;
    }
    global String address1 {
        get;
        set;
    }
    global String address2 {
        get;
        set;
    }
    global String address3 {
        get;
        set;
    }
    global Object address4 {
        get;
        set;
    }
    global String postcode {
        get;
        set;
    }
    global String telephone {
        get;
        set;
    }
    global TradingAddresses(System.JSONParser parser) {

    }
}
global class UltimateParent {
    global String country {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global String number_Z {
        get;
        set;
    }
    global UltimateParent(System.JSONParser parser) {

    }
}
}
