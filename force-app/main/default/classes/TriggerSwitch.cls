// Light-weight = Titanium switcher for Triggers
// Depends on Custom Metadata Type of Trigger Switch which is included in Package

public with sharing class TriggerSwitch {
	public static boolean isInactive ( String triggerName ) {
		List < Trigger_Switch__mdt > switches = new List < Trigger_Switch__mdt > ([ SELECT Inactive__c, DeveloperName FROM Trigger_Switch__mdt WHERE DeveloperName = : triggerName ]);
		if ( switches.size () == 0 ) {
			// did not find an entry - return false
			System.debug ( '[Trigger Switch] - Did not find a custom metadata entry for ' + triggerName );
			return false;
		} else {
			System.debug ( '[Trigger Switch] - Setting Trigger ' + triggerName + ' to Inactive = ' + switches[0].Inactive__c );
			return switches[0].Inactive__c;
		}
	}
}
