import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import 'package:tawlatraining/widgets/long_text.dart';
import '../../constans.dart';

class Conditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: KBackgroundColor,
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.fill),
        ),
        child: Column(
          children: <Widget>[
            TitleAndArrow(
              width: .23,
              title: "الشروط و الاحكام",
              back: () {
                NamedNavigatorImpl().push(Routes.HOME_ROUTE);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * .2,
                child: Image.asset("images/logo.png"),
              ),
            ),
            LongText(
              text:
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المســـاحة لقد "
                      "تم توليد هذا النص من مولد النــــــص العربى، حيث يمكنك أن تولد مثل هذا النص"
                      " أو العديد من النصـــــوص الأخرى إضافة إلى زيادة عدد الحروف "
                      "التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقـــــرات يتيح لك "
                      "مولد النــــــــص العربى زيادة عدد الفقرات كمــــــا"
                      " تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد "
                      "لمصممي المواقع على وجه الخصوص، حيث "
                      "يحتاج العميل فى كثير من الأحـــيان أن يطلع على صورة حقيقية لتصميم الموقع"
                      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المســـاحة لقد تم توليد هذا النص من مولد النــــــص العربى، حيث يمكنك أن تولد مثل"
                      " هذا النص أو العديد من النصـــــوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من "
                      "الفقـــــرات يتيح لك مولد النــــــــص العربى زيادة عدد الفقرات كمــــــا تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد "
                      "النص العربى مفيد"
                      " لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحـــيان أن يطلع على صورة حقيقية لتصميم الموقع",
            ),
          ],
        ),
      ),
    );
  }
}
