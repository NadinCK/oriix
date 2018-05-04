[{
		"accountingRuleName": "Transaction Rule",
		"accountingSourceCriteria": " ( Archived__c = false ) ",
		"accountingCompletionIdentifier": "Archived__c",
		"accountingRuleLines": [{
			"debitGLAccount": "10000",
			"creditGLAccount": "20000",
			"amountFieldAPIName": "Credits__c",
			"accountingRuleLineName": "Principal Payment"
		}, {
			"debitGLAccount": "30000",
			"creditGLAccount": "40000",
			"amountFieldAPIName": "Debits__c",
			"accountingRuleLineName": "Interest Payment"
		}],
		"accountingEventName": "Transaction__c"
	},
	{
		"accountingRuleName": "Transaction Rule 2",
		"accountingSourceCriteria": "",
		"accountingCompletionIdentifier": "Archived__c",
		"accountingRuleLines": [{
			"debitGLAccount": "50000",
			"creditGLAccount": "60000",
			"amountFieldAPIName": "Credits__c",
			"accountingRuleLineName": "Regular Disbursal"
		}],
		"accountingEventName": "Transaction__c"
	}
]