import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResendCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:EdgeInsets.symmetric(vertical:180),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircularPercentIndicator(
            radius: 30.0,
            lineWidth: 4.0,
            percent: 0.60,
            center: new Text("45"),
            progressColor: Colors.yellow,
          ),
          SizedBox(width: 4,),
          GestureDetector(
            onTap: (){},
            child: Text("اعادة ارسال الكود"),
          ),

        ],
      ),

    );
  }
}
