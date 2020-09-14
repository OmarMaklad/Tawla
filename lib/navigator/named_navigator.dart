class Routes {
  static const SPLASH_ROUTE = "SPLASH_ROUTE";
  static const HOME_ROUTE = "HOME_ROUTE";
  static const SIGNUP_ROUTE = "SIGNUP_ROUTE";
  static const LOGIN_ROUTE = "LOGIN_ROUTE";
  static const NOTIFICATION_ROUTE = "NOTIFICATION_ROUTE";
  static const SEARCH_ROUTE = "SEARCH_ROUTE";
  static const ORDER_ROUTE = "ORDER_ROUTE";
  static const WALLET_ROUTE = "WALLET_ROUTE";
  static const CALLUS_ROUTE = "CALLUS_ROUTE";
  static const ABOUT_ROUTE = "ABOUT_ROUTE";
  static const CONDITIONS_ROUTE = "CONDITIONS_ROUTE";
  static const GOOGLE_MAP_ROUTE = "GOOGLE_MAP_ROUTE";
  static const  EDIT_PROFILE_ROUTE = "EDIT_PROFILE_ROUTE";
  static const  CHANGE_PASSWORD_ROUTE = "CHANGE_PASSWORD_ROUTE";
  static const  DETAILS_ROUTE = "DETAILS_ROUTE";
  static const  CONFIRM_TABLE_ROUTE = "CONFIRM_TABLE_ROUTE";
  static const  DONE_ROUTE = "DONE_ROUTE";
  static const  LOGIN_OR_NOT_ROUTE = "LOGIN_OR_NOT_ROUTE";
  static const  NEW_ORDERS_ROUTE = "NEW_ORDERS_ROUTE";
  static const  EDIT_CONFIRM_TABLE_ROUTE = "EDIT_CONFIRM_TABLE_ROUTE";
  static const  WAIT_TO_PAY_ROUTE = "WAIT_TO_PAY_ROUTE";
  static const  ONGOING_ORDER_ROUTE = "ONGOING_ORDER_ROUTE";
  static const  COMPLETE_ORDERS_ROUTE = "COMPLETE_ORDERS_ROUTE";
  static const  COMPLETE_ORDERS_RATE_ROUTE = "COMPLETE_ORDERS_RATE_ROUTE";
  static const  CANCELED_ORDERS_ROUTE = "CANCELED_ORDERS_ROUTE";


}

abstract class NamedNavigator {
  Future push(String routeName,
      {dynamic arguments, bool replace = false, bool clean = false});

  void pop({dynamic result});
}
