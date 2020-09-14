import 'package:flutter/material.dart';
import 'package:tawlatraining/views/Conditions/conditions.dart';
import 'package:tawlatraining/views/about_app/view.dart';
import 'package:tawlatraining/views/call_us/view.dart';
import 'package:tawlatraining/views/cancled_orders/view.dart';
import 'package:tawlatraining/views/change_password/view.dart';
import 'package:tawlatraining/views/complete_order/view.dart';
import 'package:tawlatraining/views/complete_order_rate/view.dart';
import 'package:tawlatraining/views/confirm_table/view.dart';
import 'package:tawlatraining/views/done/view.dart';
import 'package:tawlatraining/views/edit_order/view.dart';
import 'package:tawlatraining/views/edit_profile/view.dart';
import 'package:tawlatraining/views/google_map/view.dart';
import 'package:tawlatraining/views/home/view.dart';
import 'package:tawlatraining/views/login/login.dart';
import 'package:tawlatraining/views/login_or_not/view.dart';
import 'package:tawlatraining/views/new_order/view.dart';
import 'package:tawlatraining/views/notification/viwe.dart';
import 'package:tawlatraining/views/ongoing_order/view.dart';
import 'package:tawlatraining/views/orders/completed_order.dart';
import 'package:tawlatraining/views/orders/new_order.dart';
import 'package:tawlatraining/views/orders/ongoing_requests.dart';
import 'package:tawlatraining/views/orders/view.dart';
import 'package:tawlatraining/views/orders/wait_to_pay.dart';
import 'package:tawlatraining/views/restaurant_details/view.dart';
import 'package:tawlatraining/views/search/view.dart';
import 'package:tawlatraining/views/signup/signup_screen.dart';
import 'package:tawlatraining/views/splash/view.dart';
import 'package:tawlatraining/views/wait_to_pay/view.dart';
import 'package:tawlatraining/views/wallet/view.dart';
import 'named_navigator.dart';

class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
  GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH_ROUTE:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.HOME_ROUTE:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.SIGNUP_ROUTE:
        return MaterialPageRoute(builder: (_) => SignUp());
      case Routes.LOGIN_ROUTE:
        return MaterialPageRoute(builder: (_) => Login());
      case Routes.NOTIFICATION_ROUTE:
        return MaterialPageRoute(builder: (_) => NotificationView());
      case Routes.SEARCH_ROUTE:
        return MaterialPageRoute(builder: (_) => Search());
      case Routes.ORDER_ROUTE:
        return MaterialPageRoute(builder: (_) => Order());
      case Routes.WALLET_ROUTE:
        return MaterialPageRoute(builder: (_) => Wallet());
      case Routes.CALLUS_ROUTE:
        return MaterialPageRoute(builder: (_) => CallUs());
      case Routes.ABOUT_ROUTE:
        return MaterialPageRoute(builder: (_) => AboutApp());
      case Routes.CONDITIONS_ROUTE:
        return MaterialPageRoute(builder: (_) => Conditions());
      case Routes.GOOGLE_MAP_ROUTE:
        return MaterialPageRoute(builder: (_) => GoogleMap());
      case Routes.EDIT_PROFILE_ROUTE:
        return MaterialPageRoute(builder: (_) => EditProfile());
      case Routes.CHANGE_PASSWORD_ROUTE:
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case Routes.DETAILS_ROUTE:
        return MaterialPageRoute(builder: (_) => Details());
      case Routes.CONFIRM_TABLE_ROUTE:
        return MaterialPageRoute(builder: (_) => ConfirmTable());
      case Routes.DONE_ROUTE:
        return MaterialPageRoute(builder: (_) => Done());
      case Routes.LOGIN_OR_NOT_ROUTE:
        return MaterialPageRoute(builder: (_) => LoginOrNot());
      case Routes.NEW_ORDERS_ROUTE:
        return MaterialPageRoute(builder: (_) => NewOrders());
      case Routes.EDIT_CONFIRM_TABLE_ROUTE:
        return MaterialPageRoute(builder: (_) => EditTableOrder());
      case Routes.WAIT_TO_PAY_ROUTE:
        return MaterialPageRoute(builder: (_) => WaitToPay());
      case Routes.ONGOING_ORDER_ROUTE:
        return MaterialPageRoute(builder: (_) => OnGoingOrder());
      case Routes.COMPLETE_ORDERS_ROUTE:
        return MaterialPageRoute(builder: (_) => CompleteOrders());
      case Routes.COMPLETE_ORDERS_RATE_ROUTE:
        return MaterialPageRoute(builder: (_) => CompleteOrdersRate());
      case Routes.CANCELED_ORDERS_ROUTE:
        return MaterialPageRoute(builder: (_) => CanceledOrders());










    }
    return MaterialPageRoute(builder: (_) => Container());
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.pop(result);
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean)
      return navigatorState.currentState.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);

    if (replace)
      return navigatorState.currentState
          .pushReplacementNamed(routeName, arguments: arguments);

    return navigatorState.currentState
        .pushNamed(routeName, arguments: arguments);
  }
}