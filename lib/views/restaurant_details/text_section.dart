import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        "سلسلة مطاعم ديري كوين في جدة تقدم "
            "لكم أشهي المأكولات المشوية اللذيذة"
            " و المحببة لدي الصغار"
            " و الكبار فمكان عائلتك المفضل عندنا نحن في انتظارك بادر بحجز طاولتك",
        textAlign: TextAlign.right,
        style: TextStyle(
            fontSize: 16,fontFamily: 'Tajawal'
        ),
      ),
    );
  }
}
