import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import 'package:tawlatraining/widgets/smallcard.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          TitleAndArrow(
            width: .30,
            title: "الاشعارات",
            back: (){
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => SmallCard(
                icon: Icons.notifications,
                title: "03:15 PM",
                text: "وافق مطعم ديري كوين على طلب الحجز الخاص بك رقم 15537",
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
