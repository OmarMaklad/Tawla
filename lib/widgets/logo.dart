import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        height: MediaQuery.of(context).size.height*.3,
        child: Image.asset("images/logo.png"),
      ),
    );
  }
}
