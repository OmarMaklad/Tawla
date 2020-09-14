import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final Function onsave;

  CustomTextField({@required this.hint, @required this.onsave});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String _error(String str) {
    switch (widget.hint) {
      case "01234567899":
        return "ادخل رقم الجوال";
      case "**********":
        return "ادخل الرقم السرى";
      case "عمر":
        return "ادخل الاسم";
      case "مقلد":
        return "ادخل الاسم";
      case "@Example.com":
        return "ادخل الايميل";
    }
  }

  bool _isHidden = true;

  void _visibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return _error(widget.hint);
        }
        return null;
      },
      obscureText: widget.hint == "**********" ? _isHidden : false,
      textAlign: TextAlign.right,
      onSaved: (widget.onsave),
      style: TextStyle(fontSize: 12),
      decoration: InputDecoration(
        prefixIcon: widget.hint == "**********"
            ? IconButton(
                onPressed: _visibility,
                alignment: Alignment.center,
                icon: _isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              )
            : null,
        filled: true,
        hintText: widget.hint,
        fillColor: KTextFieldColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KTextFieldColor),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: KTextFieldColor),
          borderRadius: BorderRadius.circular(30),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
