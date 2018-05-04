@IsTest @TestVisible
private class ORIX_TestDataUserBuilder {

    //user name
    private string userName;
    //user last name
    private string lastName;
    //user email
    private string userEmail;
    //user alias
    private string userAlias;
    //user timezone
    private string timeZoneSidKey = 'America/Chicago' ;
    //user locale
    private string localeSidKey = 'en_US' ;
    //user email encoding
    private string emailEncodingKey= 'ISO-8859-1' ;
    //user profile Id
    private string profileId;
    //user active
    private boolean isActive = true; 
    //role id
    private Id roleId;
    //languageLocale key
    private string LanguageLocaleKey = 'en_US';
    
    
    @TestVisible
   private ORIX_TestDataUserBuilder() {
       
   }
   
   @TestVisible
   private ORIX_TestDataUserBuilder userName(string userName) {
        this.UserName = userName;
        return this;
   }
   
   @TestVisible
   private ORIX_TestDataUserBuilder lastName(string lastName) {
        this.lastName= lastName;
        return this;
   }
   
   @TestVisible
   private ORIX_TestDataUserBuilder userEmail(string userEmail) {
        this.userEmail = userEmail;
        return this;
   }
   
   @TestVisible
   private ORIX_TestDataUserBuilder userAlias(string userAlias) {
        this.userAlias= userAlias;
        return this;
   }
   
   @TestVisible
   private ORIX_TestDataUserBuilder profileId(string profileId) {
        this.profileId= profileId;
        return this;
   }
   
   @TestVisible
   private ORIX_TestDataUserBuilder roleId(string roleId) {
        this.roleId = roleId;
        return this;
   }
   
   @TestVisible
    private List<User> create(Integer count, Boolean isPersisted) {
        
        List<User> lstUser = new List<User>();
        
        for(Integer i = 0; i < count; i++) {
            
            User objUser = new User();
            
            if(this.userName != null) {
                objUser.userName = this.userName;
            }
            
            if(this.lastName != null) {
                objUser.lastName = this.lastName;
            }
            
            if(this.userEmail != null) {
                objUser.Email = this.userEmail;
            }
            
            if(this.userAlias != null) {
                objUser.Alias = this.userAlias;
            }
            
            if(this.timeZoneSidKey != null) {
                objUser.timeZoneSidKey = this.timeZoneSidKey;
            }
            
            if(this.localeSidKey != null) {
                objUser.localeSidKey = this.localeSidKey;
            }
            
            if(this.emailEncodingKey != null) {
                objUser.emailEncodingKey = this.emailEncodingKey;
            }
            
            if(this.profileId != null) {
                objUser.profileId = this.profileId;
            }
            
            if(this.roleId != null) {
                objUser.UserroleId = this.roleId;
            }
            
            if(this.LanguageLocaleKey != null) {
                objUser.LanguageLocaleKey = this.LanguageLocaleKey;
            }
             lstUser.add(objUser);
        }
        if(isPersisted) {
            insert lstUser;
        }
        
        return lstUser;
    }
    
}