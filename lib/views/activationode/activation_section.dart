import 'package:flutter/material.dart';
import 'package:tawlatraining/views/activationode/text_field_active.dart';
class ActiveSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 30,bottom:6),
            child: Text("كود التفعيل",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: TextFieldActive(
                  hint: "0",
                  onsave: null,
                ),
              ),
              Expanded(
                child: TextFieldActive(
                  hint: "0",
                  onsave: null,
                ),
              ),
              Expanded(
                child: TextFieldActive(
                  hint: "0",
                  onsave: null,
                ),
              ),
              Expanded(
                child: TextFieldActive(
                  hint: "0",
                  onsave: null,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
