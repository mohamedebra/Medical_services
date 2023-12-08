import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medical_services/data/webServies/dio.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/domian/model/model_product.dart';
import 'package:medical_services/domian/repository/repository.dart';

import 'package:medical_services/presentation/Screens/chat/chats.dart';
import 'package:medical_services/presentation/Screens/reports/reports.dart';
import 'package:medical_services/presentation/Screens/setting/setting.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../presentation/Screens/Home/home_screen.dart';

class AppCubit extends Cubit<MedicalState> {
  AppCubit() : super(MedicalIntialstate());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Product> products = [];
  List screens = [
    Home_Screen(),
    Reports(),
    Chats(),
    Setting(),
  ];

  List title = ['Medical +', 'Reports', 'Chats', 'Settings'];

  addProduct(Product product){
    products.add(product);
    emit(BuyItemsProduct());
  }


  void changeBottonNav(index) {
    currentIndex = index;
    if (currentIndex == 2) {
      getUsers();

    }   else{
      currentIndex = index;

      emit(MedicalChangeBottonNav());
    }
  }

  IconData iconData = Icons.favorite_border;
  bool favorite = true;

  void changeIconfavorite() {
    favorite = !favorite;
    iconData = favorite ? Icons.favorite : Icons.favorite_border;
    emit(ChangeIconFavorie());
  }

  IconData iconData1 = Icons.favorite_border;

  bool favorite1 = true;

  IconData iconData2 = Icons.favorite_border;

  bool favorite2 = true;

  IconData icon = Icons.visibility_outlined;

  bool isPassword = true;

  void changeIconFavorite1() {
    favorite1 = !favorite1;
    iconData1 = favorite1 ? Icons.favorite : Icons.favorite_border;
    emit(ChangeIconFavorie1());
  }

  void changeIconFavorite2() {
    favorite2 = !favorite2;
    iconData2 = favorite2 ? Icons.favorite : Icons.favorite_border;
    emit(ChangeIconFavorie2());
  }

  void changeIcon() {
    isPassword = !isPassword;
    icon =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(ChangeIcon());
  }

  // Login for Api
  Future<AuthModel?> loginUser({
    required email,
    required password,
  }) async {
    final data ={
      "email" : email,
      "password" : password
    };
    emit(MedicalLoginLodingState());
    DioHelper.postData(url: 'login',data: data).then((value) async {
      AuthModel(
        email: email,
        token: data['token'],
        password: password,

      );
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool('token', true);
      emit(MedicalLoginScussesState(value.statusMessage));
    }).catchError((error){
      emit(MedicalLoginErrorState(error.toString()));
    });
    return null;


  }

  // Register for Api
  registerUser({
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
    DioHelper.postData(url: 'register',data: data).then((value) async {
      AuthModel(
          email: email,
          token: data['token'],
          name: name,
          phone: phone,
          password: password,
          type: type
      );
      SharedPreferences pref =
      await SharedPreferences
          .getInstance();
      pref
          .setBool('token', true);
      emit(MedicalRegesterScussesState());
    }).catchError((error){
      emit(MedicalRegesterErrorState('$error'));
    });
    return null;
  }

  // Buy Product for Api
  Future buyProduct(
      productId,
      ) async {
    final data = {"product_id": productId};
    DioHelper.postData(url: "buy-product" ,data: data).then((value) {
      data['product_id'];
      emit(BuyProduct());
    }).catchError((error){
      emit(BuyProductError(error.toString()));
    });
    return null;

  }

  // send message for fireBase
  void sendMessages({
    required String? dataTime,
    required String? text,
    required String? receiverId,
    required String? senderId,
  }) {
    MessageModel model1 = MessageModel(
      text: text,
      dataTime: dataTime,
      receiverId: receiverId,
      senderId: senderId
    );
//set my chats
    FirebaseFirestore.instance
        .collection('messages')
        .add(model1.toMap())
        .then((value) {
      print(value);
      emit(MedicalSendMesssagesSucssesState());
    }).catchError((error) {
      print(error.toString());
      emit(MedicalSendMesssagesErrorState());
    });

  }

  // delete message from fireBase
  deleteMessage() {
    MessageModel model1 = MessageModel();
    FirebaseFirestore.instance
        .collection('messages')
        .doc() // <-- Doc ID to be deleted.
        .delete() // <-- Delete
        .then((value) {

      print('Deleted');
      emit(MedicalDeleteMesssagesSucssesState());
    }).catchError((error) {
      print('Delete failed: $error');
      emit(MedicaldeleteMesssagesSucssesState());
    });
  }

  MessageModel? userModel;
  getDataFireBase() async {
    FirebaseFirestore.instance.collection('messages').add({'text': 'bottom'});
  }

  // get all users from firebase
  List<SocialModel> alluser = [];
  getUsers() async {
    alluser = [];
    FirebaseFirestore.instance.collection('users').snapshots();
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.get().then((value) {
      for (var element in value.docs) {
        alluser.add(SocialModel.fromjson(element.data()));
        print(element.data());
      }
      emit(MedicalGetAllUsersSucssesState());
      print('======================mo==========');
    }).catchError((error) {
      emit(MedicalGetAllUsersErrorState(error.toString()));
      print('======================mohamed==========');
    });
  }

  List<MessageModel> message = [];
  getMessages() async {
 FirebaseFirestore.instance
        .collection('messages')
        .snapshots()
        .listen((event) {
          // message = [];
          for (var element in event.docs) {
            message.add(MessageModel.fromjson(element.data()));
          }
    });
    emit(MedicalGetMesssagesSucssesState());
  }

  late SharedPreferences sharedPreferences;
  saveData({required String key, required dynamic value}) async {
    return await sharedPreferences.setDouble(key, value);
  }

  bool? getData({
    required key,
  }) {
    return sharedPreferences.getBool(key);
  }

  File? proFileimage;
  var picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      proFileimage = File(pickedFile.path);
      print(pickedFile.path);
      emit(MedicalImageSucsessState());
    } else {
      print('No image selected');
      emit(MedecailImageErorrState());
    }
  }

  List<dynamic> news = [];
  getNews() {
    if(news.length == 0){
     emit(NewsLodingnewsStates()) ;
     DioHelper.getData(url: 'https://rowadtest.infosaseg.com/api/v1/news').then((value){
       news = value.data;
       emit(NewsGetNews());
        print('${value.data}');
     } ).catchError((error){
       emit(NewsGetnewsError(error.toString()));
     });
    }
  }


}
