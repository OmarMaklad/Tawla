import 'package:flutter/material.dart';
import 'package:tawlatraining/widgets/textfield_section.dart';

class FullName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: TextFieldSection(
            title:"الاسم الاخير",
            hint: "مقلد",
          ),
        ),
        Expanded(
          child: TextFieldSection(
            title:"الاسم الاول",
            hint: "عمر",
          ),
        ),
      ],
    );
  }
}
