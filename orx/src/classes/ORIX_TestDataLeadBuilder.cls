/**
 * @Created By : Priyank Rajvanshi
 * @Date : 16/01/2018
 * @Description : Builder class for Lead
 **/
@IsTest @TestVisible
private class ORIX_TestDataLeadBuilder {
    
    //variable for lead first name
    private string firstName;
    //variable for lead Last name
    private string lastName;
    //variable for street
    private string streetAddress;
    //variable for city 
    private string cityAddress;
    //variable for state 
    private string stateAddress;
    //variable for country 
    private string countryAddress;
    //variable for postal code 
    private string postalCode;
    //variable for lead email address
    private string leadEmail;
    //variable for lead Company
    private string leadCompany;
    //variable for lead ABN
    private string leadABN;
    @TestVisible
    private ORIX_TestDataLeadBuilder(){
        
    }
    
    /**
    * @description It will set Lead first Name
    * @param name lead first Name.
    * @return the Returns lead first Name
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder firstName(String firstName) {
       // Set abn name
       this.FirstName = firstName;
       return this;
   }
   
   /**
    * @description It will set Lead Last Name
    * @param name lead Last Name.
    * @return the Returns lead Last Name
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder lastName(String lastName) {
       
       this.LastName = lastName;
       return this;
   }
   
   /**
    * @description It will set Lead street address
    * @param name Lead street address
    * @return the Returns Lead street address
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder streetAddress(String streetAddress) {
       
       this.streetAddress = streetAddress;
       return this;
   }
   
   /**
    * @description It will set Lead city address
    * @param name Lead city address
    * @return the Returns Lead city address
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder cityAddress(String cityAddress) {
      
       this.cityAddress = cityAddress;
       return this;
   }
   
   /**
    * @description It will set Lead state address
    * @param name Lead state address
    * @return the Returns Lead state address
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder stateAddress(String stateAddress) {
       
       this.stateAddress = stateAddress;
       return this;
   }
   
   /**
    * @description It will set Lead Country address
    * @param name Lead Country address
    * @return the Returns Lead Country address
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder countryAddress(String countryAddress) {
       
       this.countryAddress = countryAddress;
       return this;
   }
   
   /**
    * @description It will set Lead PostalCode address
    * @param name Lead PostalCode address
    * @return the Returns Lead PostalCode address
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder postalCodeAddress(String postalCode) {
       
       this.PostalCode = postalCode;
       return this;
   }
   /**
    * @description It will set Lead email
    * @param name Lead email
    * @return the Returns Lead email
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder leadEmail(String leadEmail) {
       
       this.leadEmail = leadEmail;
       return this;
   }
   
   /**
    * @description It will set Lead Company
    * @param name Lead Company
    * @return the Returns Lead Company
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder leadCompany(String leadCompany) {
       
       this.leadCompany = leadCompany;
       return this;
   }
   
   /**
    * @description It will set Lead ABN
    * @param name  ABN.
    * @return the Returns lead ABN
    */
   @TestVisible
   private ORIX_TestDataLeadBuilder leadABN(String leadABN) {
       
       this.leadABN = leadABN;
       return this;
   } 
    
   @TestVisible
    private List<Lead> create(Integer count, Boolean isPersisted) {
        
        List<Lead> lstLead = new List<Lead>();
        
        for(Integer i = 0; i < count; i++) {
            
            Lead objLead = new Lead();
            
            if(this.firstName != null) {
            	objLead.FirstName = this.firstName;
            }                       
             
            if(this.lastName != null) {
            	objLead.lastName = this.lastName;
            }
            
            if(this.streetAddress != null) {
            	objLead.street = this.streetAddress;
            } 
            
            if(this.cityAddress != null) {
            	objLead.city = this.cityAddress;
            }
            
            if(this.stateAddress != null) {
            	objLead.state = this.stateAddress;
            }
            
            if(this.countryAddress != null) {
            	objLead.country = this.countryAddress;
            }
            
            if(this.postalCode != null) {
            	objLead.PostalCode = this.postalCode;
            }
            
            if(this.leadEmail != null) {
            	objLead.Email = this.leadEmail;
            }
            
            if(this.leadCompany != null) {
            	objLead.Company = this.leadCompany;
            }
            
            if(this.leadABN != null) {
            	objLead.ORIX_ABN__c = this.leadABN;
            }
            
            lstLead.add(objLead);
            
        }
        
        if(isPersisted) {
            insert lstLead;
        }
        
        return lstLead;
    }
}