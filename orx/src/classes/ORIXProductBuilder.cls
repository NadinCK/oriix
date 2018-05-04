/**
 * @Created By : Sushant Kumar
 * @Date : 21/08/2017
 * @Description : Builder class for product
 **/
@IsTest @TestVisible
private class ORIXProductBuilder {
	
    private String name;
    
    @TestVisible
    private ORIXProductBuilder(){
        
    }
    
    @TestVisible
    private ORIXProductBuilder name(String name) {
        this.name = name;
        return this;
    }
    
    @TestVisible
    private List<Product2> create(Integer count, Boolean isPersisted) {
        
        List<Product2> lstProduct = new List<Product2>();
        
        for(Integer i = 0; i< count; i++) {
            Product2 p = new Product2();
            
            if(this.name != null) {
                p.name = this.name;
            }
            lstProduct.add(p);
        }
        
        if(isPersisted) {
            insert lstProduct;
        }
        return lstProduct;
    }
}