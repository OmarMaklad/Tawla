import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawlatraining/navigator/named_navigator.dart';
import 'package:tawlatraining/navigator/named_navigator_impl.dart';
import 'package:tawlatraining/views/orders/cancel_order.dart';
import 'package:tawlatraining/views/orders/completed_order.dart';
import 'package:tawlatraining/views/orders/new_order.dart';
import 'package:tawlatraining/views/orders/ongoing_requests.dart';
import 'package:tawlatraining/views/orders/tabbar_text.dart';
import 'package:tawlatraining/views/orders/wait_to_pay.dart';
import 'package:tawlatraining/widgets/arrowback_and_title.dart';
import '../../constans.dart';
class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    _tabController =TabController(length: 5,vsync: this,initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: KBackgroundColor,
        body: Column(
          children: <Widget>[
            TitleAndArrow(
              title: "حجوزاتى",
              width: .30,
              back:(){
                NamedNavigatorImpl().push(Routes.HOME_ROUTE);
              },
            ),
           Directionality(
             textDirection: TextDirection.rtl,
             child: TabBar(
               indicatorColor: KIconColor,
               indicatorSize: TabBarIndicatorSize.label,
               indicatorPadding:EdgeInsets.all(10),
               controller: _tabController,
               isScrollable: true,
                 tabs: [
                   TextTab(text: "الطلبات الجديدة",),
                   TextTab(text: "فى انتظار الدفع",),
                   TextTab(text: "الطلبات الجارية",),
                   TextTab(text: "الطلبات المكتملة",),
                   TextTab(text: "الطلبات لملغاه",),
                 ],
             ),
           ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height:height*1,
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    NewOrder(),
                    OnWaitToPay(),
                    OnRequests(),
                    CompleteOrder(),
                    CancelOrder(),

                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
