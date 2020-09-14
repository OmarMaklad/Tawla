import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';

class PlaceCard extends StatelessWidget {
  final String image;
  final String name;
  final String cat;
  final String address;
  final int id;

  const PlaceCard({ this.image, this.name, this.cat, this.address, this.id});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: InkWell(
        onTap: (){
          NamedNavigatorImpl().push(Routes.DETAILS_ROUTE);
        },
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  image,
                  height: height*.25,
                  width: double.infinity,
                fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:  Colors.white70
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4,left:20,right: 20,bottom: 4),
                    child: Text(cat,textAlign: TextAlign.center,),
                  ),
                ),
              ),
             Positioned(
               right:25,
               bottom: 40,
                 child: Text(name,
                       style: TextStyle(
                           color: KButtonTextColor,
                       fontFamily: "Tajawal",
                       fontWeight: FontWeight.bold,
                       fontSize: 16),
                     ),
             ),
               Positioned(
                 right: 18,
                 bottom: 20,
                 child: Row(
                   children: <Widget>[
                     Text(address,style:
                     TextStyle(
                         color: KButtonTextColor,
                         fontFamily: "Tajawal",
                         fontSize: 11),
                     ),
                     SizedBox(width: 2,),
                     Icon(
                       Icons.location_on,size: 16,
                       color: KButtonTextColor,
                     ),
                   ],
                 ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
