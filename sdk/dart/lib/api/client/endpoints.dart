class ApiEndpoints {
  static String Login = "/digithenticate";
  static String Selfies = "/digiselfies";
  static String Credentials = "/digiselfies/credentials/{selfieId}";
  static String Profile = "/digiselfies/{id}";
  static String Relations = "/relation";
  static String UserInfo = "/claim";
  static String Contacts = "/digiselfies/connected/{id}";
  static String Accounts = "/accounts";
  static String AccessRecovery = "/accounts/{id}/confirmations";
  static String AccountSettings = "/user/{id}";
  static String ContactRequests = "/digiselfies/{id}/requests";
  static String ProfileExchange = "/exchange";
  static String Image = "/image";
}
