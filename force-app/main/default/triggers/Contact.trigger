// Example Trigger using Trigger Switch
// Note: Depends on MDT entry with DeveloperName of Contact

trigger Contact on Contact (after insert, after update) {

	// check to see if trigger should be run - note: input param is case sensitive
	if ( TriggerSwitch.isInactive ( 'Contact' )) {
		return;
	}

	// this is where work would happen when the trigger runs

}