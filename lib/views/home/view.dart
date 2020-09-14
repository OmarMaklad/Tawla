import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/views/home/app_bar.dart';
import 'package:tawlatraining/views/home/bottom_sheet.dart';
import 'package:tawlatraining/views/home/controller.dart';
import 'package:tawlatraining/views/home/model.dart';
import 'package:tawlatraining/views/home/places_list.dart';
import 'package:tawlatraining/views/home/text_feild.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController _homeController= HomeController();
  HomeModel _homeModel =HomeModel();
  bool _loading= true;
  @override
  void initState() {
    _getHomeData();
    super.initState();
  }
  _getHomeData()async{
     _homeModel = await _homeController.getHomeData();
     setState(() {
       _loading =false;
     });
  }

  void displayBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context, builder:(cxt)=>
       ModelSheet(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      appBar: homeAppBar(
        ()=> displayBottomSheet(context)
      ),
      body:_loading ?Center(
        child: CircularProgressIndicator(),
      )
          : Column(
        children: <Widget>[
          HomeTextField(),
          PlacesList(
            homeModel: _homeModel,
          ),
        ],
      ),
    );
  }
}
