<aura:component
implements="flexipage:availableForRecordHome,force:hasRecordId">
 <aura:attribute name="record" type="Object"/>
 <aura:attribute name="simpleRecord" type="Object"/>
 <aura:attribute name="recordError" type="String"/>
 <aura:attribute name="recordId" type="String"/>
 <force:recordData aura:id="recordLoader"
 recordId="{!v.recordId}"
 layoutType="FULL"
 targetRecord="{!v.record}"
 targetFields="{!v.simpleRecord}"
 targetError="{!v.recordError}"
 recordUpdated="{!c.handleRecordUpdated}"
 mode = "VIEW"
 />
 <!-- Display Lightning Data Service errors, if any -->
 <aura:if isTrue="{!not(empty(v.recordError))}">
 <div class="recordError">
 <ui:message title="Error" severity="error" closable="true">
 {!v.recordError}
 </ui:message>
 </div>
 </aura:if>
</aura:component>