import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/login/login.dart';
class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
 @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
        ()=>NamedNavigatorImpl().push(Routes.LOGIN_ROUTE,replace: false,clean: false)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
     body: Stack(
       children: <Widget>[
         Positioned.fill(
             child: Image.asset("images/splash.png",fit: BoxFit.cover,)),
         Center(
           child: Image.asset("images/logo.png"),
         ),
       ],
     ),
    );
  }
}
