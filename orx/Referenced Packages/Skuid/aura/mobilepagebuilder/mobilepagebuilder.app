<aura:application template="skuid:skuidtemplate" access="global">
	<!-- REMOVING AS A WORKAROUND FOR SALESFORCE SPRING 17 ISSUE -->
	<!-- See SKUID-2916 -->
	<!-- <aura:dependency resource="flexipage:*"/> -->
    <skuid:page page="MobilePageBuilder" useURLParameters="true" type="Mobile"></skuid:page>
</aura:application>