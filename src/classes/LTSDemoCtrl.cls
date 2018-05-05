public class LTSDemoCtrl {

	@AuraEnabled
	public static String getAccountsList() {
		List<Account> accountList = [SELECT Id, Name FROM Account LIMIT 5];
		return JSON.serialize(accountList);
	}
}