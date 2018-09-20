// Test Class for Trigger Switch
// Depends on a Test MDT entry of Test_Active and Test_Inactive for successful execution

@isTest
private class TriggerSwitchTest {
	
	@isTest static void test_active () {
		Boolean result = TriggerSwitch.isInactive ( 'Test_Active' );
		System.assertEquals ( result, False, 'TriggerSwitchTest.test_active Expected False, returned ' + result );
	}
	
	@isTest static void test_inactive () {
		Boolean result = TriggerSwitch.isInactive ( 'Test_Inactive' );
		System.assertEquals ( result, True, 'TriggerSwitchTest.test_inactive Expected True, returned ' + result );
	}

	@isTest static void test_not_found () {
		Boolean result = TriggerSwitch.isInactive ( 'should_not_find_anything' );
		System.assertEquals ( result, False, 'TriggerSwitchTest.test_not_found Expected False, returned ' + result );
	}
	
}
