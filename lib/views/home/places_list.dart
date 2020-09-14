import 'package:flutter/material.dart';
import 'package:tawlatraining/views/home/place_card.dart';
import 'model.dart';

class PlacesList extends StatelessWidget {
  final HomeModel homeModel;

  PlacesList({this.homeModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemBuilder:(context,index){
            return PlaceCard(
              name: homeModel.data.restaurants[index].name,
              cat: homeModel.data.restaurants[index].category,
              image: homeModel.data.restaurants[index].mainImage,
              address: homeModel.data.restaurants[index].address,
              id: homeModel.data.restaurants[index].id,
            );
          },
          itemCount:homeModel.data.restaurants.length,
      ),
    );
  }
}
