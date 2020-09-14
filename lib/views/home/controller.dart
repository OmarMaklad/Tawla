import 'package:tawlatraining/api_Provider/api_provider.dart';
import 'package:tawlatraining/views/home/model.dart';

class HomeController{
 HomeModel _homeModel =  HomeModel();
 NetWork _netWork =NetWork();
 Future<HomeModel> getHomeData()async{
  var response = await _netWork.getData(url:'/home');
  _homeModel = HomeModel.fromJson(response);
  return response;
 }

}