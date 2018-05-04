function loadJS(file) {
    var jsElm = document.createElement("script");
    jsElm.type = "application/javascript";
    jsElm.src = file;
    document.body.appendChild(jsElm);
}
loadJS("/soap/ajax/29.0/apex.js");

function getSObjectType(skuidObject){
    if(skuidObject.objectName){
        return skuidObject.objectName;
    }else if(skuidObject.type){
        return skuidObject.type;
    }else if(skuidObject.attributes && skuidObject.attributes.type){
        return skuidObject.attributes.type;
    }
}

function buildSObject(skuidModelObj,isList){
    if(skuidModelObj){
        var sObjType = getSObjectType(skuidModelObj);
        if(sObjType){ 
            if(skuidModelObj.data && skuidModelObj.data.length > 0){
                var sObj;
                var resultObjList = [];
                skuidModelObj.data.forEach(function (skuidObject){
                    sObj = new sforce.SObject(sObjType);
                    for(var key in skuidObject){
                        if(skuidObject[key]){
                            if(typeof skuidObject[key] !== 'object'){
                                if(!(key.toUpperCase() === "ID15" || key.toUpperCase() === "ID")){
                                    sObj[key] = skuidObject[key];
                                } else if(key.toUpperCase() === "ID"  && skuidObject[key].length >= 15){
                                    sObj[key] = skuidObject[key];
                                }
                            }
                        }else{
                            sObj[key] = skuidObject[key];
                        }            
                    }

                    resultObjList.push(sObj); 
                });
                if(isList){
                    return resultObjList;
                }else{
                    return resultObjList[0];
                }
            }     
        }     
    }
    return null;
}

function validateAllRequiredFields($,stepEditor,models){
    // Clear our list of messages
    stepEditor.clearMessages();
    var messages = [];
    $.each(models,function(i,model){
       $.each(model.registeredLists,function(j,list){
           var listMessages = list.validateRequiredFields();
           if(listMessages && listMessages.length) {
               $.each(listMessages,function(){
                  messages.push(this); 
               });
           }
       });
    });
    if (messages.length) {
        stepEditor.handleMessages(messages);
        return false;
    }
}

function saveNGApplication(appParams){
    var newAppParamObject = {};
    newAppParamObject.application = buildSObject(appParams.applicationM, false);
    newAppParamObject.business = buildSObject(appParams.businessM, false);
    newAppParamObject.pmtstream = buildSObject(appParams.pmtstreamM, true);
    newAppParamObject.account = buildSObject(appParams.accountM, false);
    newAppParamObject.contact = buildSObject(appParams.contactM, false); 
    var appResult = sforce.apex.execute('genesis.SkuidNewApplicationV2','createApplication', {
        appStr : JSON.stringify(newAppParamObject.application),
        accountStr : JSON.stringify(newAppParamObject.account),
        bInfoStr : JSON.stringify(newAppParamObject.business),
        contactStr : JSON.stringify(newAppParamObject.contact),
        pmtstreamStr : JSON.stringify(newAppParamObject.pmtstream),
    });
    return appResult;
}

function saveParty(partyModelObj,contactModel,accountModel,businessInfoModel,ownersList){
    var p = buildSObject(partyModelObj,false); 
    var acc = buildSObject(accountModel,false); 
    var con = buildSObject(contactModel,false); 
    var busInfo = buildSObject(businessInfoModel,false);
    var oList = buildSObject(ownersList,true);
    var partyResult = sforce.apex.execute('genesis.SkuidPartyCtrl','createParty',
        {   
            partyJson : JSON.stringify(p),
            contactJson : JSON.stringify(con),
            accountJson : JSON.stringify(acc),
            bijson : JSON.stringify(busInfo),
            ownersJson : JSON.stringify(oList),
        });
    return partyResult;
}

function submitToNextDepartment(appId){
    return sforce.apex.execute('genesis.LoanDashBoard','submitToNextDepartment',{ applicationId : appId });
}

function showSubmitButton(appId){
    return sforce.apex.execute('genesis.LoanDashBoard','showSubmitToNxtDeptBtn',{ applicationId : appId });
}

