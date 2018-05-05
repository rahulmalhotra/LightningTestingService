({
	fetchAccountsFromServer : function(component, event, helper) {
		var accountsAction = component.get('c.getAccountsList');
		accountsAction.setCallback(this, function(response) {
			var state = response.getState();
			if(state==='SUCCESS') {
				var accountsString = response.getReturnValue();
				var accountsList = JSON.parse(accountsString);
				component.set('v.accountsList', accountsList);
			}
		});
		$A.enqueueAction(accountsAction);		
	}
})