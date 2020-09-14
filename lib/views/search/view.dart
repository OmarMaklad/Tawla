import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/home/places_list.dart';
import 'package:tawlatraining/views/search/search_section.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import '../../constans.dart';
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Column(
        children: <Widget>[
          TitleAndArrow(
            width: .30,
            title: "البحث",
            back: (){
              NamedNavigatorImpl().push(Routes.HOME_ROUTE);
            },
          ),
          SearchSection(),
          PlacesList(),
        ],
      ),

    );
  }
}
