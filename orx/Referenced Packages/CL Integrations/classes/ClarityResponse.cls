/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ClarityResponse extends ints.IntegrationResponseObject {
    global String action;
    global ints.ClarityResponse.ClearBankBehavior clear_bank_behavior;
    global ints.ClarityResponse.ClearFraud clear_fraud;
    global ints.ClarityResponse.ClearProductsRequest clear_products_request;
    global String errorMessage;
    global String exception_descriptions;
    global String externalId;
    global String filter_codes;
    global String filter_descriptions;
    global ints.ClarityResponse.Inquiry inquiry;
    global String integrationErrorStatus;
    global String integrationErrorStatusCode;
    global String internalId;
    global List<String> product_notices;
    global String requestBody;
    global String responseBody;
    global String tracking_number;
    global ClarityResponse() {

    }
global class AccountStability {
    global String fifteen_days_ago;
    global String ninety_days_ago;
    global String one_hour_ago;
    global String one_hundred_eighty_days_ago;
    global String one_year_ago;
    global String seven_days_ago;
    global String thirty_days_ago;
    global String twentyfour_hours_ago;
    global AccountStability() {

    }
}
global class Accounts {
    global Integer account_age_code;
    global Integer account_index;
    global String account_number;
    global String account_risk_level;
    global String bank_name;
    global String bank_risk_level;
    global String days_since_default_history;
    global Integer days_since_first_seen_by_clarity;
    global Integer days_since_last_seen_by_clarity;
    global String days_since_validated_trade;
    global String default_history;
    global String default_rate_60_days_ago;
    global String default_rate_61_365_days_ago;
    global String default_rate_ratio;
    global String high_risk_factors;
    global Integer inquiries_30_days_ago;
    global Integer inquiries_31_365_days_ago;
    global Integer inquiries_app_state_30_days_ago;
    global Integer inquiries_app_state_31_365_days_ago;
    global String inquiries_app_state_ratio;
    global String inquiries_ratio;
    global Integer number_of_ssns;
    global Boolean primary;
    global String reason_codes;
    global String routing_number;
    global ints.ClarityResponse.Stability stability;
    global String validated_through_trades;
    global Accounts() {

    }
}
global class AmountClosures {
    global AmountClosures() {

    }
}
global class AmountClosuresPaid {
    global AmountClosuresPaid() {

    }
}
global class AmountClosuresUnpaid {
    global AmountClosuresUnpaid() {

    }
}
global class AmountFraudClosures {
    global AmountFraudClosures() {

    }
}
global class AmountOfChecksAttempted {
    global Integer ninety_days_ago;
    global Integer one_hundred_eighty_days_ago;
    global Integer one_year_ago;
    global Integer seven_days_ago;
    global Integer thirty_days_ago;
    global Integer twentyfour_hours_ago;
    global Integer two_years_ago;
    global AmountOfChecksAttempted() {

    }
}
global class AmountOfChecksCashed {
    global Integer ninety_days_ago;
    global Integer one_hundred_eighty_days_ago;
    global Integer one_year_ago;
    global Integer seven_days_ago;
    global Integer thirty_days_ago;
    global Integer twentyfour_hours_ago;
    global Integer two_years_ago;
    global AmountOfChecksCashed() {

    }
}
global class AmountOpenItems {
    global AmountOpenItems() {

    }
}
global class AmountPaidItems {
    global AmountPaidItems() {

    }
}
global class AverageAmountOfChecksAttempted {
    global Integer ninety_days_ago;
    global Integer one_hundred_eighty_days_ago;
    global Integer one_year_ago;
    global Integer seven_days_ago;
    global Integer thirty_days_ago;
    global Integer twentyfour_hours_ago;
    global Integer two_years_ago;
    global AverageAmountOfChecksAttempted() {

    }
}
global class AverageAmountOfChecksCashed {
    global Integer ninety_days_ago;
    global Integer one_hundred_eighty_days_ago;
    global Integer one_year_ago;
    global Integer seven_days_ago;
    global Integer thirty_days_ago;
    global Integer twentyfour_hours_ago;
    global Integer two_years_ago;
    global AverageAmountOfChecksCashed() {

    }
}
global class CheckCashing {
    global ints.ClarityResponse.AmountOfChecksAttempted amount_of_checks_attempted;
    global ints.ClarityResponse.AmountOfChecksCashed amount_of_checks_cashed;
    global ints.ClarityResponse.AverageAmountOfChecksAttempted average_amount_of_checks_attempted;
    global ints.ClarityResponse.AverageAmountOfChecksCashed average_amount_of_checks_cashed;
    global Integer count_checks_cashed;
    global ints.ClarityResponse.CountOfChecksAttempted count_of_checks_attempted;
    global ints.ClarityResponse.CountOfChecksCashed count_of_checks_cashed;
    global String days_since_last_check_attempted;
    global String days_since_last_check_cashed;
    global Integer micr_ssn_24months;
    global Integer micr_ssn_24months_attempted;
    global CheckCashing() {

    }
}
global class ClearBankBehavior {
    global ints.ClarityResponse.AccountStability account_stability;
    global List<ints.ClarityResponse.Accounts> accounts;
    global String action;
    global String cbb_non_scorable_reason;
    global String cbb_non_scorable_reason_description;
    global String cbb_reason_code_description;
    global String cbb_reason_code_description2;
    global String cbb_reason_codes;
    global String cbb_reason_codes2;
    global String cbb_score;
    global String cbb_score2;
    global ints.ClarityResponse.CheckCashing check_cashing;
    global String check_cashing_history;
    global String days_since_last_check_cashing_activity;
    global String days_since_last_successful_check_cashed;
    global ints.ClarityResponse.DenyDescriptions deny_descriptions;
    global Integer estimated_bank_history;
    global String exception_descriptions;
    global String filter_codes;
    global String filter_descriptions;
    global ints.ClarityResponse.FisChexAdvisor fis_chex_advisor;
    global String full_name;
    global ints.ClarityResponse.InquiryClusterAccountStability inquiry_cluster_account_stability;
    global ints.ClarityResponse.InquiryClusterStability inquiry_cluster_stability;
    global Integer max_number_of_ssns_with_micr;
    global Integer number_of_accounts_active;
    global Integer number_of_accounts_all;
    global Integer number_of_accounts_at_high_risk_banks;
    global Integer number_of_accounts_linked_to_fraud;
    global Integer number_of_accounts_with_alternate_ssns;
    global Integer number_of_accounts_with_check_history;
    global Integer number_of_accounts_with_default_history;
    global Integer number_of_high_risk_accounts;
    global Integer number_of_low_risk_accounts;
    global Integer number_of_unknown_risk_accounts;
    global Boolean positive_check_writing_history;
    global String product_date;
    global String reason_code_description;
    global String reason_codes;
    global ClearBankBehavior() {

    }
}
global class ClearFraud {
    global String action;
    global String bankruptcy_codes;
    global String bankruptcy_description;
    global ints.ClarityResponse.ClearFraudAlternateIdentity clear_fraud_alternate_identity;
    global List<ints.ClarityResponse.ClearFraudCrosstabs> clear_fraud_crosstabs;
    global ints.ClarityResponse.ClearFraudIdentityVerification clear_fraud_identity_verification;
    global ints.ClarityResponse.ClearFraudIndicator clear_fraud_indicator;
    global ints.ClarityResponse.ClearFraudInquiry clear_fraud_inquiry;
    global ints.ClarityResponse.ClearFraudMultiple clear_fraud_multiple;
    global ints.ClarityResponse.ClearFraudPointsTotal clear_fraud_points_total;
    global List<ints.ClarityResponse.ClearFraudRatios> clear_fraud_ratios;
    global String clear_fraud_reason_code_description;
    global String clear_fraud_reason_codes;
    global Integer clear_fraud_score;
    global List<ints.ClarityResponse.ClearFraudStabilities> clear_fraud_stabilities;
    global Double crosstab_multiple;
    global Integer crosstab_points_total;
    global String error_code;
    global String error_description;
    global String exception_descriptions;
    global String filter_codes;
    global String filter_descriptions;
    global String fraud_signature_identifier;
    global Boolean fraud_signature_match;
    global String fraud_signature_name;
    global String full_name;
    global String message;
    global String non_scorable_reason_code;
    global String non_scorable_reason_description;
    global String product_date;
    global ClearFraud() {

    }
}
global class ClearFraudAlternateIdentity {
    global String credit_risk;
    global Boolean found_with_bank_account;
    global String fraud_risk;
    global String identity_type_code;
    global String identity_type_description;
    global ClearFraudAlternateIdentity() {

    }
}
global class ClearFraudCrosstabs {
    global Integer bank_account;
    global Integer cell_phone;
    global Integer drivers_license;
    global Integer email_address;
    global Integer home_address;
    global Integer home_phone;
    global String name;
    global Integer ssn;
    global Integer zip_code;
    global ClearFraudCrosstabs() {

    }
}
global class ClearFraudIdentityVerification {
    global String name_address_match;
    global String name_address_reason_code;
    global String name_address_reason_code_description;
    global Integer overall_match_reason_code;
    global String overall_match_result;
    global String phone_match_result;
    global String phone_match_type;
    global String phone_match_type_description;
    global String phone_type;
    global String ssn_dob_match;
    global String ssn_dob_reason_code;
    global String ssn_dob_reason_code_description;
    global String ssn_name_match;
    global String ssn_name_reason_code;
    global String ssn_name_reason_code_description;
    global ClearFraudIdentityVerification() {

    }
}
global class ClearFraudIndicator {
    global Boolean best_on_file_ssn_issue_date_cannot_be_verified;
    global Boolean best_on_file_ssn_recorded_as_deceased;
    global Boolean credit_established_before_age_18;
    global Boolean credit_established_prior_to_ssn_issue_date;
    global Boolean current_address_reported_by_new_trade_only;
    global Boolean current_address_reported_by_trade_open_lt_90_days;
    global Boolean drivers_license_format_invalid;
    global Boolean drivers_license_inconsistent_with_on_file;
    global Boolean high_probability_ssn_belongs_to_another;
    global Boolean input_ssn_invalid;
    global Boolean input_ssn_issue_date_cannot_be_verified;
    global Boolean input_ssn_recorded_as_deceased;
    global Boolean inquiry_address_cautious;
    global Boolean inquiry_address_first_reported_lt_90_days;
    global Boolean inquiry_address_high_risk;
    global Boolean inquiry_address_non_residential;
    global Boolean inquiry_age_younger_than_ssn_issue_date;
    global Boolean inquiry_current_address_not_on_file;
    global Boolean inquiry_on_file_current_address_conflict;
    global Integer max_number_of_ssns_with_any_bank_account;
    global Boolean more_than_3_inquiries_in_the_last_30_days;
    global Boolean on_file_address_cautious;
    global Boolean on_file_address_high_risk;
    global Boolean on_file_address_non_residential;
    global Boolean ssn_reported_more_frequently_for_another;
    global Boolean telephone_number_inconsistent_with_address;
    global Boolean telephone_number_inconsistent_with_state;
    global Integer total_number_of_fraud_indicators;
    global Boolean work_phone_previously_listed_as_cell_phone;
    global Boolean work_phone_previously_listed_as_home_phone;
    global ClearFraudIndicator() {

    }
}
global class ClearFraudInquiry {
    global Integer fifteen_days_ago;
    global Integer ninety_days_ago;
    global Integer one_hour_ago;
    global Integer one_minute_ago;
    global Integer seven_days_ago;
    global Integer ten_minutes_ago;
    global Integer thirty_days_ago;
    global Integer threesixtyfive_days_ago;
    global Integer twentyfour_hours_ago;
    global ClearFraudInquiry() {

    }
}
global class ClearFraudMultiple {
    global String fifteen_days_ago;
    global String ninety_days_ago;
    global String one_hour_ago;
    global String one_minute_ago;
    global String seven_days_ago;
    global String ten_minutes_ago;
    global String thirty_days_ago;
    global String threesixtyfive_days_ago;
    global String twentyfour_hours_ago;
    global ClearFraudMultiple() {

    }
}
global class ClearFraudPointsTotal {
    global Integer fifteen_days_ago;
    global Integer ninety_days_ago;
    global Integer one_hour_ago;
    global Integer one_minute_ago;
    global Integer seven_days_ago;
    global Integer ten_minutes_ago;
    global Integer thirty_days_ago;
    global Integer threesixtyfive_days_ago;
    global Integer twentyfour_hours_ago;
    global ClearFraudPointsTotal() {

    }
}
global class ClearFraudRatios {
    global Double fifteen_days_ago;
    global String name;
    global Double ninety_days_ago;
    global Double one_hour_ago;
    global Double seven_days_ago;
    global Double ten_minutes_ago;
    global Double thirty_days_ago;
    global Double threesixtyfive_days_ago;
    global Double twentyfour_hours_ago;
    global ClearFraudRatios() {

    }
}
global class ClearFraudStabilities {
    global Integer fifteen_days_ago;
    global String name;
    global Integer ninety_days_ago;
    global Integer one_hour_ago;
    global Integer one_minute_ago;
    global Integer seven_days_ago;
    global Integer ten_minutes_ago;
    global Integer thirty_days_ago;
    global Integer threesixtyfive_days_ago;
    global Integer twentyfour_hours_ago;
    global ClearFraudStabilities() {

    }
}
global class ClearProductsRequest {
    global String account_name;
    global String action;
    global String control_file_name;
    global String control_file_substituted;
    global Integer control_file_version_number;
    global String exception_descriptions;
    global String filter_codes;
    global String filter_descriptions;
    global String group_name;
    global String location_name;
    global String username;
    global ClearProductsRequest() {

    }
}
global class Closures {
    global String account_number;
    global Integer amount;
    global String closure_date;
    global String consumer_dispute_text;
    global Integer days_since_closed;
    global String days_since_paid_closed;
    global String institution_name;
    global String institution_state;
    global Boolean matches_clarity_seen_account;
    global String paid_date;
    global String reason_code;
    global String routing_number;
    global Closures() {

    }
}
global class CountOfChecksAttempted {
    global Integer ninety_days_ago;
    global Integer one_hundred_eighty_days_ago;
    global Integer one_year_ago;
    global Integer seven_days_ago;
    global Integer thirty_days_ago;
    global Integer twentyfour_hours_ago;
    global Integer two_years_ago;
    global CountOfChecksAttempted() {

    }
}
global class CountOfChecksCashed {
    global Integer ninety_days_ago;
    global Integer one_hundred_eighty_days_ago;
    global Integer one_year_ago;
    global Integer seven_days_ago;
    global Integer thirty_days_ago;
    global Integer twentyfour_hours_ago;
    global Integer two_years_ago;
    global CountOfChecksCashed() {

    }
}
global class Error {
    global String message;
    global String name;
    global String reason;
    global Error() {

    }
}
global class ErrorMessage {
    global List<ints.ClarityResponse.Error> errors;
    global ErrorMessage() {

    }
}
global class FisChexAdvisor {
    global ints.ClarityResponse.AmountClosures amount_closures;
    global ints.ClarityResponse.AmountClosuresPaid amount_closures_paid;
    global ints.ClarityResponse.AmountClosuresUnpaid amount_closures_unpaid;
    global ints.ClarityResponse.AmountFraudClosures amount_fraud_closures;
    global ints.ClarityResponse.AmountOpenItems amount_open_items;
    global ints.ClarityResponse.AmountPaidItems amount_paid_items;
    global Integer avg_number_days_between_closure_5_years_ago;
    global Integer avg_number_of_checks_ordered;
    global List<ints.ClarityResponse.Closures> closures;
    global Integer consumer_dispute_quantity_5_years_ago;
    global Integer consumer_dispute_resolved_quantity_5_years_ago;
    global String consumer_privacy_message_text;
    global String consumer_statement_text1;
    global String consumer_statement_text2;
    global String consumer_statement_text3;
    global String debit_bureau_reason_codes;
    global String debit_bureau_reason_texts;
    global Integer debit_bureau_score;
    global String driver_license_validation_message_text;
    global Integer episode_span_all_item_total_number_of_days_3_years_ago;
    global List<String> error_details;
    global String government_number_validation_message_text;
    global Integer max_amount_open_item_3_years_ago;
    global Integer max_amount_paid_item_3_years_ago;
    global Integer max_number_days_to_pay_3_years_ago;
    global Integer min_check_number_on_open_item_3_years_ago;
    global Integer min_number_days_to_pay_3_years_ago;
    global Boolean no_closures;
    global Boolean no_debit_data_found;
    global String no_non_dda_auto_previous_inquiry;
    global String no_non_dda_credit_previous_inquiry;
    global Boolean no_previous_inquiry;
    global Boolean no_previous_inquiry_dda_and_non_dda;
    global Boolean no_returned_checks;
    global ints.ClarityResponse.NumberClosures number_closures;
    global ints.ClarityResponse.NumberClosuresPaid number_closures_paid;
    global ints.ClarityResponse.NumberClosuresUnpaid number_closures_unpaid;
    global Integer number_days_most_recent_open_item_3_years_ago;
    global Integer number_days_most_recent_paid_item_3_years_ago;
    global Integer number_days_since_first_closure_5_years_ago;
    global Integer number_days_since_most_recent_closure_5_years_ago;
    global ints.ClarityResponse.NumberFraudClosure number_fraud_closure;
    global ints.ClarityResponse.NumberOfCheckOrders number_of_check_orders;
    global ints.ClarityResponse.NumberOfChecksOrdered number_of_checks_ordered;
    global Integer number_of_days_since_first_inquiry;
    global Integer number_of_days_since_first_order;
    global Integer number_of_days_since_last_inquiry;
    global Integer number_of_days_since_most_recent_order;
    global Integer number_of_different_accounts;
    global ints.ClarityResponse.NumberOfInquiries number_of_inquiries;
    global Integer number_of_inquiries_in_3_years_ago_dda_and_non_dda;
    global ints.ClarityResponse.NumberOfNonDdaInquiries number_of_non_dda_inquiries;
    global ints.ClarityResponse.NumberOfPaydayInquiries number_of_payday_inquiries;
    global ints.ClarityResponse.NumberOpenItems number_open_items;
    global ints.ClarityResponse.NumberPaidItems number_paid_items;
    global List<ints.ClarityResponse.ReturnedChecks> returned_checks;
    global FisChexAdvisor() {

    }
}
global class Inquiry {
    global String account_age;
    global String action;
    global String active_military;
    global String bank_account_number;
    global String bank_account_type;
    global String bank_account_zeros;
    global String bank_routing_number;
    global Boolean bank_routing_valid;
    global String cell_phone;
    global String check_amount;
    global String check_bank_account_number;
    global String check_bank_account_zeros;
    global String check_bank_routing_number;
    global String check_issue_date;
    global String check_serial_number;
    global String check_type;
    global String city;
    global String control_file_name;
    global String control_file_version_number;
    global String date_of_birth;
    global String date_of_last_activity;
    global String date_of_next_payday;
    global String debit_card_expiration;
    global String debit_card_number;
    global String delivery_point;
    global String deny_codes;
    global Boolean drivers_license_invalid;
    global String drivers_license_number;
    global String drivers_license_state;
    global String email_address;
    global String email_domain_name;
    global String email_name;
    global String employer_address;
    global String employer_city;
    global String employer_name;
    global String employer_state;
    global String exception_descriptions;
    global String filter_codes;
    global String filter_descriptions;
    global String first_name;
    global String full_name;
    global String generational_code;
    global String home_phone;
    global String housing_status;
    global String initiating_inquiry;
    global String inquiry_purpose_type;
    global String inquiry_received_at;
    global String inquiry_tradeline_type;
    global String last_name;
    global String last_purchased;
    global String last_purchased_by_group;
    global String last_seen_by_account;
    global String last_seen_by_group;
    global String last_seen_by_location;
    global String leadgen;
    global String loan_duration;
    global String middle_initial;
    global String months_at_address;
    global String months_at_current_employer;
    global String net_monthly_income;
    global String number_of_ssns_with_bank_account;
    global String occupation_type;
    global Boolean ofac_match;
    global Integer ofac_score;
    global String origination_ip_address;
    global String pass_through_1;
    global String pass_through_2;
    global String pass_through_3;
    global String pass_through_4;
    global String pass_through_5;
    global String pay_frequency;
    global Boolean paycheck_direct_deposit;
    global String pc_digital_fingerprint;
    global String pc_fingerprint_time_offset;
    global String pcpsession;
    global String pcpvendor;
    global String product_date;
    global String products_executed;
    global String products_requested;
    global String reference_first_name;
    global String reference_last_name;
    global String reference_phone;
    global String reference_relationship;
    global String requested_amount;
    global String server;
    global Boolean social_security_deceased;
    global String social_security_number;
    global Boolean social_security_valid;
    global Integer ssn_distinct_first_last_name_count;
    global Boolean ssn_first_appearance;
    global Integer ssn_first_last_name_count;
    global Integer ssn_first_name_count;
    global Integer ssn_last_name_count;
    global String state;
    global String street_address_1;
    global String street_address_2;
    global Integer total_historical_inquiries;
    global String tracking_number;
    global String username;
    global String vin;
    global String work_fax_number;
    global String work_phone;
    global String work_phone_extension;
    global String zip_code;
    global Inquiry() {

    }
}
global class InquiryClusterAccountStability {
    global String fifteen_days_ago;
    global String ninety_days_ago;
    global String one_hour_ago;
    global String one_hundred_eighty_days_ago;
    global String one_year_ago;
    global String seven_days_ago;
    global String thirty_days_ago;
    global String twentyfour_hours_ago;
    global InquiryClusterAccountStability() {

    }
}
global class InquiryClusterStability {
    global String fifteen_days_ago;
    global String ninety_days_ago;
    global String one_hour_ago;
    global String one_hundred_eighty_days_ago;
    global String one_year_ago;
    global String seven_days_ago;
    global String thirty_days_ago;
    global String twentyfour_hours_ago;
    global InquiryClusterStability() {

    }
}
global class NumberClosures {
    global NumberClosures() {

    }
}
global class NumberClosuresPaid {
    global NumberClosuresPaid() {

    }
}
global class NumberClosuresUnpaid {
    global NumberClosuresUnpaid() {

    }
}
global class NumberFraudClosure {
    global NumberFraudClosure() {

    }
}
global class NumberOfCheckOrders {
    global NumberOfCheckOrders() {

    }
}
global class NumberOfChecksOrdered {
    global NumberOfChecksOrdered() {

    }
}
global class NumberOfInquiries {
    global String number_since_first_inquiry;
    global String number_since_last_inquiry;
    global NumberOfInquiries() {

    }
}
global class NumberOfNonDdaInquiries {
    global String number_since_first_inquiry;
    global String number_since_last_inquiry;
    global NumberOfNonDdaInquiries() {

    }
}
global class NumberOfPaydayInquiries {
    global String number_since_first_inquiry;
    global String number_since_last_inquiry;
    global NumberOfPaydayInquiries() {

    }
}
global class NumberOpenItems {
    global NumberOpenItems() {

    }
}
global class NumberPaidItems {
    global NumberPaidItems() {

    }
}
global class ReturnedChecks {
    global String account_number;
    global Integer amount;
    global String check_date;
    global String check_number;
    global String days_since_check_paid;
    global Integer days_since_check_returned;
    global String drivers_license_id;
    global String drivers_license_number;
    global String drivers_license_state;
    global Boolean matches_clarity_seen_account;
    global String merchant_name;
    global String paid_date;
    global String routing_number;
    global ReturnedChecks() {

    }
}
global class Stability {
    global String fifteen_days_ago;
    global String ninety_days_ago;
    global String one_hour_ago;
    global String one_hundred_eighty_days_ago;
    global String one_year_ago;
    global String seven_days_ago;
    global String thirty_days_ago;
    global String twentyfour_hours_ago;
    global Stability() {

    }
}
}
