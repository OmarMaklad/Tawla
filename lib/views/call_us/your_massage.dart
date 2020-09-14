import 'package:flutter/material.dart';
import '../../constans.dart';
class YourMassage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical:8),
            child: Text(
              "رسالتك",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'Tajawal',
                color: KTextColor,
              ),
            ),
          ),
          TextFormField(
            maxLines: 10,
            textAlign: TextAlign.right,
            style: TextStyle(),
            decoration: InputDecoration(
              hintText:"رسالتك",
              filled: true,
              fillColor: KTextFieldColor,
              hintStyle: TextStyle(fontFamily: 'Tajawal', fontSize: 12),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KTextFieldColor),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: KTextFieldColor),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
