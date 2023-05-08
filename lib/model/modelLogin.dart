import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/model/model.dart';
import 'package:medical_services/model/model_firebase.dart';

class ModelLogin{


 static Future<FireModel?> loginuser({
    required email,
    required password,
  }) async{
    final  url = 'http://ugt.517.mywebsitetransfer.com/api/v1/user/auth/login';
    final data = {
      "email" : email,
      "password" : password
    };
    final dio = Dio();
    Response response;
    response = await dio.post(url,data: data);
    if(response.statusCode == 200){
      final body = response.data;
      return FireModel(email: email,token: data['token']);

    }else {
      return null;
    }
  }


  static Future<FireModel?> registaruser({
    required email,
    required password,
    required phone,
    required name,
    required type,
}) async{
    const  url = 'http://ugt.517.mywebsitetransfer.com/api/v1/user/auth/register';
    final data = {
      "email" : email,
      "password" : password,
      "phone" : phone,
      "name" : name,
      "type" : type,
    };
    final dio = Dio();
    Response response;
    response = await dio.post(url,data: data);
    if(response.statusCode == 200){
      final body = response.data;
      return FireModel(email: email,token: data['token']);

    }else {
      return null;
    }
  }
 List bussines = [];

  static Future buyprodact({
   required product_id,
})async{
   final url = "http://ugt.517.mywebsitetransfer.com/api/v1/buy-product";
   final data = {
     "product_id" : product_id
   };
   final  dio = Dio();
   Response response;
   response = await dio.post(url,data: data);
   if(response.statusCode == 200 ){
     final body = response.data;
     Fluttertoast.showToast(
         msg: "",
         toastLength: Toast.LENGTH_LONG,
         gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 2,
         backgroundColor: Colors.blueGrey,
         textColor: Colors.white,
         fontSize: 16.0
     );


     return data['product_id'];

   }else{
     return null;
   }
}


 static Future getprodact({
   required category_id,
 })async{
   final url = "http://ugt.517.mywebsitetransfer.com/api/v1/user-products";
   final data = {
     "category_id" : category_id
   };
   final  dio = Dio();
   Response response;
   response = await dio.get(url);
   if(response.statusCode == 200 ){
     final body = response.data;
     Fluttertoast.showToast(
         msg: "تم اضافه المنتج",
         toastLength: Toast.LENGTH_LONG,
         gravity: ToastGravity.CENTER,
         timeInSecForIosWeb: 2,
         backgroundColor: Colors.blueGrey,
         textColor: Colors.white,
         fontSize: 16.0
     );
     return  FireModel(token: data['token']);



   }else{
     return null;
   }
 }
//http://ugt.517.mywebsitetransfer.com/api/v1/products
//http://ugt.517.mywebsitetransfer.com/api/v1/products
   static Future getreports()async{
     final url = "http://ugt.517.mywebsitetransfer.com/api/v1/products";

     final  dio = Dio();
     Response response;
     response = await dio.get(url);
     if(response.statusCode == 200 ){
       final body = response.data;

         response.data['data'] as List ;
       print(response.data);
     }else{
       return null;
     }
   }


}


//Future<dynamic> getdata() async {
//   var uri =
//       'https://newsapi.org/v2/top-headlines?apiKey=c9e2a047a41c43cca0ca5f777a0a82dc&sources=techcrunch';
//
//   final response = await http.get(Uri.parse(uri));
//
//   if (response.statusCode == 200) {
//     var oje = json.decode(response.body);
//   } else {
//     print(response.reasonPhrase);
//   }
//   FirebaseMessaging.onMessage.listen((event) {
//     print(event.data.toString());
//   });
//
// }

//  CacheHelper.sharedPreferences;
// // Widget widget;

// var uId = CacheHelper.getData(key: 'OnBoaring');
// if(uId != null )
//   {
//     var widget = Home();
//   }else{
//   var widget = Login();
// }
// DioHelper.init();
//    var on = CacheHelper.getData(key: 'OnBoaring');
//   print("$on =============================================================================================");

// var on = CacheHelper.getData(key: 'OnBoaring');
// print(on);

// var data =   await getdata();
// for(var i = 0 ; i > 100 ; i++){
//   print(data[0]['title']);
// }
// class MyApp extends StatefulWidget {
//   //
//   static void setLocale(BuildContext context, Locale newLocale) async {
//     _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
//     state?.changeLanguage(newLocale);
//   }
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
// }

// changeLanguage(Locale locale) {
//   setState(() {
//     _locale = locale;
//   });
// }

// This widget is the root of your application.
