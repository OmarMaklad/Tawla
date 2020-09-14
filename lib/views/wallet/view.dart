import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/wallet/Listview.dart';
import 'package:tawlatraining/views/wallet/logo.dart';
import 'package:tawlatraining/views/wallet/mony.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import '../../constans.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Column(
        children: <Widget>[
          TitleAndArrow(
            width: .30,
            title: "محفظتى",
            back: () {
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
          WalletLogo(),
          Money(),
          WalletList(),

        ],
      ),
    );
  }
}
