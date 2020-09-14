import 'package:flutter/material.dart';
import 'package:tawlatraining/constans.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
class ModelSheetTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 30,
        ),
        title: Text("عمر مقلد",style: TextStyle(fontFamily: 'Tajawal',fontSize: 16),),
        subtitle: Row(
          children: <Widget>[
            Icon(Icons.phone,size: 12,),
            Text("0123456789",style: TextStyle(fontFamily: 'Tajawal',fontSize: 12),),
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.settings,
            color: KButtonColor,
          ),
          onPressed: (){
            NamedNavigatorImpl().push(Routes.EDIT_PROFILE_ROUTE);
          },
        ),
      ),
    );
  }
}
