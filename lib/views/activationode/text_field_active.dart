import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextFieldActive extends StatelessWidget {
  final String hint;
  final Function onsave;

  TextFieldActive({@required this.hint, @required this.onsave});

  String _error(String str) {
    switch (hint) {
      case "0":
        return "ادخل الكود";
    }
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(10),
      child:  Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
            child: Padding(
              padding: EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return _error(hint);
                    }
                    return null;
                  },
                  onSaved: onsave,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: hint,

                  ),
                ),
            ),
      ),
    );
  }
}
