import 'package:flutter/material.dart';
import '../../constans.dart';

class AddPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:20),
      child: Center(
        child: Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: KButtonColor,
              maxRadius: 60,
            ),
            Positioned(
              right:5,
              bottom:5,
              child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      color:KIconColor,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  constraints: BoxConstraints(
                    minWidth: 25,
                    minHeight: 25,
                  ),
                  child: Icon(Icons.add_to_photos,size:15,color:Colors.white,)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
