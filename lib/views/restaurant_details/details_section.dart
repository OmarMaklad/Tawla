import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:tawlatraining/views/restaurant_details/list_title.dart';
import 'package:tawlatraining/views/restaurant_details/text_section.dart';
import 'package:tawlatraining/views/restaurant_details/title_section.dart';
import 'package:tawlatraining/views/restaurant_details/work_date.dart';
import 'package:tawlatraining/widgets/icon_button.dart';

class DetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.46,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: <Widget>[
            TitleSection(),
            TextSection(),
            ListTitleSection(
              image: "images/file.png",
              title: "3ايام",
              subtitle: "فترة السماح بإلغاء الحجز",
            ),
            ListTitleSection(
              image: "images/dwallet.png",
              title: "50 ريال",
              subtitle: "مبلغ تأكيد الحجز",
            ),
            WorkDate(),


              ],
            ),

      ),
    );
  }
}
