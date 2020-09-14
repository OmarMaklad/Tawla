import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'custom_textfield.dart';

class TextFieldSection extends StatelessWidget {
  final String title;
  final String hint;
  final Function onsave;

  const TextFieldSection({ this.title, this.hint,this.onsave});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:8),
            child: Text(title,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Tajawal',
              color: KTextColor,
            ),),
          ),
          CustomTextField(
            hint: hint,
            onsave: onsave,
          ),
        ],
      ),

    );
  }
}
