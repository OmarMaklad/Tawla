import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constans.dart';
class SearchTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function ontab;
  const SearchTextField({this.hint, this.icon, this.ontab});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
       textAlign: TextAlign.right,
      style: TextStyle(),
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: ontab,
          icon: Icon(icon),
        ),
        hintText: hint,
        filled: true,
        fillColor: KTextFieldColor,
        hintStyle: TextStyle(fontFamily: 'Tajawal',fontSize: 12),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KTextFieldColor),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KTextFieldColor),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
