import 'package:flutter/material.dart';

class StackLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top:-135,
      right: MediaQuery.of(context).size.width*.18,
      child:Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Container(
          height: MediaQuery.of(context).size.height*.3,
          child: Image.asset("images/stack_logo.png"),
        ),
      ),);
  }
}
