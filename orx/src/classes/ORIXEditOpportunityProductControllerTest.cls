@isTest
private class ORIXEditOpportunityProductControllerTest {
    
    static testMethod void getProduct() {
        
        TriggerHandler__c obj = new TriggerHandler__c();
        obj.Name = 'OpportunityTrigger';
        obj.ORIX_Is_Active__c = true;
        insert obj;
		TriggerHandler__c obj1 = new TriggerHandler__c();
        obj1.Name = 'OpportunityLineItemTrigger';
        obj1.ORIX_Is_Active__c = true;
        insert obj1;        
        
        //creating product
        
        List<Product2> lstProduct = new ORIXProductBuilder().name('test product').create(1, false);

        //creating product
        Product2 prod = lstProduct[0];
        prod.IsActive = true;
        prod.ProductCode = 'FINL';
        insert prod;
        
        //creating pricebook
        id standard = test.getStandardPricebookId();
        system.debug('standard'+standard);
        PricebookEntry one = createPricebookEntry(standard, prod);
        
        //creating account
        
        List<Account> accountOriginal = new ORIX_TestDataAccountBuilder().name('Test Account').abn('567894321')
                                              .create(1, true);
        //creating opportunity
        Date todayDate = System.today();
        Date closeDate = todayDate.addMonths(1);
        List<Opportunity> lstOpportunity = new ORIX_TestDataOpportunityBuilder().name('testOpportunity')
                                               .Account(accountOriginal[0].id)
                                               .stageName('Working Platform')
                                               .closeDate(closeDate)
                                               .create(1, true);
        
        //creating opportunity line item
        
        List<OpportunityLineItem> opportunityProduct = new ORIXOpportunityProductBuilder()
            												.baseManagementFee(25.00)
            												.fleetSize(20)
            												.opportunityId(lstOpportunity[0].id)
            												.PriceBookEntryId(one.id)
            												.create(1, true);
        
        
        EditOpportunityProductController.getProduct(opportunityProduct[0].id);
        EditOpportunityProductController.updateOppLI(opportunityProduct[0]); 
        EditOpportunityProductController.getProduct(null);
        list<id> lstUserId = new list<id>{userinfo.getUserId()};
        EditOpportunityProductController.getUserNames(lstUserId);
        
        
    }
    
    public static PricebookEntry createPricebookEntry (id standard, Product2 prod) {
	    
        PricebookEntry one = new PricebookEntry();
	    one.pricebook2Id = standard;
	    one.product2id = prod.id;
	    one.unitprice = 1249.0;
	    one.isactive = true;
	    insert one;
	    return one;
	}
    
}