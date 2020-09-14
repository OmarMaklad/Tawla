import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/home/view.dart';
import 'package:tawlatraining/views/splash/view.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        canvasColor: Colors.transparent,
      ),
      initialRoute: Routes.SPLASH_ROUTE,
      onGenerateRoute: NamedNavigatorImpl.onGenerateRoute,
      navigatorKey: NamedNavigatorImpl.navigatorState,
      home:HomeView(),
    );
  }
}


