import 'package:flutter/material.dart';
class WalletLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        child: Image.asset("images/wallet_logo.png"),
      ),
    );
  }
}
