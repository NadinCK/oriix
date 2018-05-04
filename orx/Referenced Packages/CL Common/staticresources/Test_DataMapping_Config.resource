[
    {
        "targetObjectAPIName": "clcommon__Accounting_Entry__c",
        "sourceObjectAPIName": "clcommon__Transaction__c",
        "relationshipfieldAPIName": null,
        "processingIdentifierFieldName": "clcommon__Archived__c",
        "sourceCriteriaStr": " ( clcommon__Archived__c = false ) ",
        "headerSFId": null,
        "headerName": "Transaction Event",
        "groups": [
            {
                "groupSFId": null,
                "groupName": "All Transactions Except Payoff Payments",
                "fieldMappings": [
                    {
                        "targetFieldAPIName": "clcommon__Credit_Amount__c",
                        "sourceFieldAPIName": "clcommon__Credits__c",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Credit Amount",
                        "defaultValueDataType": null,
                        "defaultValue": null
                    },
                    {
                        "targetFieldAPIName": "clcommon__Debit_Amount__c",
                        "sourceFieldAPIName": "clcommon__Debits__c",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Debit Amount",
                        "defaultValueDataType": null,
                        "defaultValue": null
                    },
                    {
                        "targetFieldAPIName": "clcommon__Transaction_Creation_Date__c",
                        "sourceFieldAPIName": "",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Transaction Creation Date",
                        "defaultValueDataType": "DATE",
                        "defaultValue": "2017-01-10 00:00:00"
                    },
                    {
                        "targetFieldAPIName": "clcommon__Transaction_Date__c",
                        "sourceFieldAPIName": "",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Transaction Value Date",
                        "defaultValueDataType": "DATE",
                        "defaultValue": "2017-01-10"
                    },
                    {
                        "targetFieldAPIName": "clcommon__Credit_GL_Account__c",
                        "sourceFieldAPIName": null,
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Credit GL",
                        "defaultValueDataType": "ID",
                        "defaultValue": "10000"
                    },
                    {
                        "targetFieldAPIName": "clcommon__Debit_GL_Account__c",
                        "sourceFieldAPIName": null,
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Debit GL",
                        "defaultValueDataType": "ID",
                        "defaultValue": "20000"
                    }
                ]
            },
            {
                "groupSFId": null,
                "groupName": "Payoff Payments",
                "fieldMappings": [
                    {
                        "targetFieldAPIName": "clcommon__Credit_Amount__c",
                        "sourceFieldAPIName": "clcommon__Credits__c",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Credit Amount",
                        "defaultValueDataType": null,
                        "defaultValue": null
                    },
                    {
                        "targetFieldAPIName": "clcommon__Debit_Amount__c",
                        "sourceFieldAPIName": "clcommon__Debits__c",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Debit Amount",
                        "defaultValueDataType": null,
                        "defaultValue": null
                    },
                    {
                        "targetFieldAPIName": "clcommon__Transaction_Date__c",
                        "sourceFieldAPIName": "",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Transaction Creation Date",
                        "defaultValueDataType": "DATE",
                        "defaultValue": "2017-01-10 00:00:00"
                    },
                    {
                        "targetFieldAPIName": "clcommon__Transaction_Creation_Date__c",
                        "sourceFieldAPIName": "",
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Transaction Value Date",
                        "defaultValueDataType": "DATE",
                        "defaultValue": "2017-01-10"
                    },
                    {
                        "targetFieldAPIName": "clcommon__Credit_GL_Account__c",
                        "sourceFieldAPIName": null,
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Credit GL",
                        "defaultValueDataType": "ID",
                        "defaultValue": "30000"
                    },
                    {
                        "targetFieldAPIName": "clcommon__Debit_GL_Account__c",
                        "sourceFieldAPIName": null,
                        "fieldMappingSFId": null,
                        "fieldMappingName": "Debit GL",
                        "defaultValueDataType": "ID",
                        "defaultValue": "40000"
                    }
                ]
            }
        ]
    }
]
