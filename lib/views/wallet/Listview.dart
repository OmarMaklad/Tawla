import 'package:flutter/material.dart';
import 'package:tawlatraining/widgets/smallcard.dart';
class WalletList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => SmallCard(
            icon: Icons.account_balance_wallet,
            title: "03:15 PM",
            text:
            "سحب 500 ريال من رصيدك لطلب الحجز الخاص بك رقم 131414",
          )),
    );
  }
}
