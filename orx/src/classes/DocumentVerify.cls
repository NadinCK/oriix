global class DocumentVerify{
    
    Webservice static String verifyDocumentCategory(Id appId){
        if(appId!=null){
            
            List<genesis__Application_Document_Category__c> appdocList = [Select id,
                                                                            Name,
                                                                            genesis__Application__c,
                                                                            Document_Verification_for_Assets__c,
                                                                            Document_Verification_for_Contracts__c,
                                                                            Document_Verification_for_Identification__c,
                                                                            Document_Verification_for_Others__c,
                                                                            genesis__Document_Category__c,
                                                                            genesis__Status__c
                                                                            from genesis__Application_Document_Category__c 
                                                                            where genesis__Application__c =: appId 
                                                                            AND name!='Root'];
                                                                    
            System.debug('------------------appdocList -----------'+appdocList);
            
            for(genesis__Application_Document_Category__c appdoc : appdocList ){ 
                    
                    if(appdoc.genesis__Status__c == 'Cleared'){
                        //System.debug('----'+appdoc.name);
                        //System.debug('----'+appdoc.name);
                        if(appdoc.Name == 'Identification' && (appdoc.Document_Verification_for_Identification__c == null || appdoc.Document_Verification_for_Identification__c ==0)){
                            appdoc.Document_Verification_for_Identification__c = 100;
                        }
                        else if(appdoc.Name == 'Contract' && (appdoc.Document_Verification_for_Contracts__c ==null || appdoc.Document_Verification_for_Contracts__c ==0)){
                            appdoc.Document_Verification_for_Contracts__c = 100;
                        
                        }
                        else if(appdoc.Name == 'Asset' && (appdoc.Document_Verification_for_Assets__c ==null || appdoc.Document_Verification_for_Assets__c ==0)){
                            appdoc.Document_Verification_for_Assets__c = 100;
                        
                        }
                        else if(appdoc.Name == 'Others' && (appdoc.Document_Verification_for_Others__c == null || appdoc.Document_Verification_for_Others__c ==0)){
                            appdoc.Document_Verification_for_Others__c = 100;
                        }
                        else{
                            appdoc.Document_Verification_for_Others__c =0;
                            appdoc.Document_Verification_for_Identification__c =0;
                            appdoc.Document_Verification_for_Contracts__c =0;
                            appdoc.Document_Verification_for_Assets__c =0;
                        }
                    }
                    system.debug('==appdoc.Document_Verification_for_Others__c =='+appdoc.Document_Verification_for_Others__c );
                    system.debug('==appdoc.Document_Verification_for_Identification__c =='+appdoc.Document_Verification_for_Identification__c );
                    system.debug('==appdoc.Document_Verification_for_Contracts__c =='+appdoc.Document_Verification_for_Contracts__c );
                    system.debug('==appdoc.Document_Verification_for_Assets__c =='+appdoc.Document_Verification_for_Assets__c );
            
        }
        update appdocList;
        system.debug('--------updated----------'+appdocList);
        }
        return 'Success';
    }
}