import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/constants/string.dart';
import 'package:medical_services/data/webServies/dio.dart';
import 'package:medical_services/data/webServies/chacheHelper.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/domian/model/model_product.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ModelLogin {

  static Future<AuthModel?> loginUser({
    required email,
    required password,
  }) async {
    final data ={
      "email" : email,
      "password" : password
    };
    Response response = await DioHelper.postData(url: 'login',data: data);
    if (response.statusCode == 200){
      return  AuthModel(
        email: email,
        token: data['token'],
        password: password,

      );
    }else {
      return null;
    }
  }

  static Future<AuthModel?> registerUser({
    required email,
    required password,
    required phone,
    required name,
    required type,
  }) async {
    final data = {
      "email": email,
      "password": password,
      "phone": phone,
      "name": name,
      "type": type,
    };
//register
    Response response = await DioHelper.postData(url: 'register',data: data);
    if (response.statusCode == 200) {
      return AuthModel(
          email: email,
          token: data['token'],
          name: name,
          phone: phone,
          password: password,
          type: type
      );
    } else {
      return null;
    }
  }


  static Future buyprodact({
    required product_id,
  }) async {
    final data = {"product_id": product_id};

    Response response = await DioHelper.postData(url: "buy-product" ,data: data);
    if (response.statusCode == 200) {
      return data['product_id'];
    } else {
      return null;
    }
  }

  static Future getProduct({
    required category_id,
  }) async {
    // const url = "http://192.168.1.12:8000/api/v1/user-products";
    final data = {"category_id": category_id};
    Response response = await DioHelper.getData(url: 'user-products',data: data);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
          msg: "تم اضافه المنتج",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 16.0);
      return AuthModel( token: data['token'],);
    } else {
      return null;
    }
  }

  static Future getreports() async {
    Response response = await DioHelper.getData(url: buseUrlproducts);
    if (response.statusCode == 200) {
      var data = await response.data['data'];
      return data;
    }
  }

  static Future getNews() async {
    Response response = await DioHelper.getData(url: buseUrlNews);
    if (response.statusCode == 200) {
      var data = await response.data['data'];
      return data;
    }
  }
  static Future<List<Data>> getReports() async{
    final data = await ModelLogin.getreports();
    return data;

  }

  static Future getspecializations() async {
    Response response = await DioHelper.getData(url: buseUrlspecializations);
    if (response.statusCode == 200) {

      var data = await response.data['data'];
      return data;
    } else {
      return null;
    }
  }
}
