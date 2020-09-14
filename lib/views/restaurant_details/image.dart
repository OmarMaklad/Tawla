import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class RusImage extends StatelessWidget {
  final Function ontab;
  const RusImage({ this.ontab}) ;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height*.46,
        child: Carousel(
          boxFit: BoxFit.cover,
          dotSize: 5.0,
          dotBgColor: Colors.black38.withOpacity(0.01),
          dotSpacing: 15.0,
          showIndicator: true,
          images: [
            Image.asset('images/1.jpg'),
            Image.asset('images/1.jpg'),
            Image.asset('images/1.jpg'),
          ],
        ),
      ),
      Positioned(
        right:20,
        top: 30,
        child: GestureDetector(
          onTap: ontab,
          child: CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.white70,
              child: Icon(Icons.arrow_forward_ios,size: 20,)
          ),
        ),
      ),
    ],);
  }
}
