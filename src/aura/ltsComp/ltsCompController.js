({
	doInit: function(component, event, helper) {
		component.set('v.myName', 'Rahul Malhotra');
	},

	buttonClicked: function(component, event, helper) {
		var name = component.get('v.myName');
		name = name + ' - You are Awesome';
		component.set('v.myName', name);
	},

	fetchAccounts: function(component, event, helper) {
		helper.fetchAccountsFromServer(component, event, helper);
	}
})