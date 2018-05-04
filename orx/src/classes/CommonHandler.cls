/**
    @author:        Priyank
    @date:          29/06/2017
    @description:   This common class is used to control common functionality of base package like fetch record type id, 
                    build query of sobject.
 */
public class CommonHandler { 
    
    /**
    @author:        Priyank
    @date:          29/06/2017
    @description:   This Method will be used to fetch comma separate all fields of sobject.
   */
    public static string getSobjectFields(String sobjectName) {
        
        Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get(sobjectName).getDescribe().fields.getMap();
        
        String commaSepratedFields = '';
        for(String fieldName : fieldMap.keyset()) {
           if(fieldMap.get(fieldName).getDescribe().isAccessible()) {
                    
               if(commaSepratedFields == null || commaSepratedFields == '') {
                    commaSepratedFields = 'select '+fieldName;
                }
                else {
                    commaSepratedFields = commaSepratedFields + ', ' + fieldName;
                }
            }
           
        }
        
        return commaSepratedFields;
    }
    
    public static map<string,string> getSobjectTypeById() {
        
        Map<String,String> keys = new Map<String,String>();
        Map<String,Schema.SobjectType> describe = Schema.getGlobalDescribe();
        for(String s:describe.keyset())
        keys.put(describe.get(s).getDescribe().getKeyPrefix(),s);
        
        return keys;
    }
    
}