import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medical_services/data/webServies/dio.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/domian/model/model_chat.dart';
import 'package:medical_services/business_logic/states.dart';

import 'package:medical_services/presentation/Screens/chat/chats.dart';
import 'package:medical_services/presentation/Screens/reports/reports.dart';
import 'package:medical_services/presentation/Screens/setting/setting.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart'as http;
import '../presentation/Screens/Home/home_screen.dart';



class AppCubit extends Cubit<MedialState> {
  AppCubit() : super(MedicalIntialstate());

  static AppCubit get(context) => BlocProvider.of(context);


  SocialModel? model;
  ModelLogin? modelLogin;


   loginuser({required email ,required password}){
     emit(MedicalLoginLodingState());
     ModelLogin.loginuser(email: email, password: password).
     then((value) {
       emit(MedicalLoginScussesState(value!.email));
       print('${value.email}**********************************');
       // print(value.user!.uid);

       // model!.uId = value.user!.uid;
     })
         .catchError((error) {
       emit(MedicalLoginErrorState(error.toString()));
     });
  }
  registaruser({
    required email,
    required password,
    required phone,
    required name,
    required type,
}){
    emit(MedicalLoginLodingState());
    ModelLogin.registaruser(email: email, password: password, phone: phone, name: name, type: type).
    then((value)
    {
      emit(MedicalRegesterScussesState());

    }).catchError((error){
      emit(MedicalRegesterErrorState('${error.toString()}///////////////////'));
    });


  }

  int currentIndex = 0;

  List screens = [
    Home_Screen(),
    Reports(),
    Chats(),
    Setting(),
  ];

  List title = [
    'Medical +',
    'Reports',
    'Chats',
    'Settings'
  ];

  void changeBottonNav(index) {
    currentIndex = index;
    if (currentIndex == 2) {
      getUsers();
    } else {
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

  void changeIconfavorite1() {
    favorite1 = !favorite1;
    iconData1 = favorite1 ? Icons.favorite : Icons.favorite_border;
    emit(ChangeIconFavorie1());
  }

  IconData iconData2 = Icons.favorite_border;
  bool favorite2 = true;

  void changeIconfavorite2() {
    favorite2 = !favorite2;
    iconData2 = favorite2 ? Icons.favorite : Icons.favorite_border;
    emit(ChangeIconFavorie2());
  }


  // NetworkImage person = NetworkImage('${model!.image}');
  // bool isPerson= true;
  //
  //
  // void changeImage() {
  //   person =
  //   isPerson ? NetworkImage('${model!.image}') : AssetImage('assetName');
  //
  //   emit(ChangeImage());
  // }

  IconData icon = Icons.visibility_outlined;
  bool isPassword = true;

  void changeIcon() {
    isPassword = !isPassword;
    icon =
    isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;

    emit(ChangeIcon());
  }


  // userLogin({
  //   required String email,
  //   required String password
  // }) {
  //   emit(MedicalLoginLodingState());
  //   FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email, password: password).
  //   then((value) {
  //     emit(MedicalLoginScussesState(value.user!.uid));
  //     print(value.user!.email);
  //     print(value.user!.uid);
  //
  //     // model!.uId = value.user!.uid;
  //   })
  //       .catchError((error) {
  //     emit(MedicalLoginErrorState(error.toString()));
  //   });
  // }


  // Future<UserCredential> signInWithEmailAndPassword({
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     return UserCredential._(
  //       this,
  //       await FirebaseAuth.instance.signInWithEmailAndPassword(email: 'mohamed2001@gmail.com', password: '123456'),
  //     );
  //   } on FirebaseAuthMultiFactorExceptionPlatform catch (e) {
  //     throw FirebaseAuthMultiFactorException._(this, e);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }


  // void user({
  //
  //   required String name,
  //   required String email,
  //   required String password,
  //   required String phone,
  //   required String uId,
  //
  // }) {
  //   SocialModel(
  //       email: email,
  //       name: name,
  //       phone: phone,
  //       // uId: FirebaseAuth.instance.currentUser!.uid,
  //       password: password
  //
  //   );
  //   print('hello');
  //   emit(MedicalRegister());
  //
  //   FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password
  //   ).then((value) {
  //     print('object');
  //     print(value);
  //
  //     userCreate(
  //         name: name,
  //         email: email,
  //         phone: phone,
  //         uId: uId,
  //         password: password
  //     );
  //
  //
  //     print(value.toString());
  //
  //     emit(MedicalRegesterScussesState());
  //   }).catchError((error) {
  //     emit(MedicalRegesterErrorState(error.toString()));
  //   });
  // }

  userCreate({
    required String name,
    required String email,
    required String phone,
    required String uId,
    required String password,
  }) {
    SocialModel model = SocialModel(
        email: email,
        name: name,
        phone: phone,
        uId: FirebaseAuth.instance.currentUser!.uid,
        password: password


    );
    FirebaseFirestore.instance.
    collection('users')
        .doc()
        .set(model.toMap()).then((value) {
      print(FirebaseAuth.instance.currentUser!.uid);
      emit(MedicalCreateRegisterSuccessstate());
    })
        .catchError((error) {
      emit(MedicalCreateRegisterError(error.toString()));
    });
  }

  // {
  //   if(users.length == 0)
  //
  //   FirebaseFirestore.instance.collection('users').get().then((value)
  //   {
  //     value.docs.forEach((element) {
  //
  //       if(element.data()['uId'] != model!.uId)
  //
  //       users.add(SocialModel.fromjson(element.data()));
  //     });
  //     emit(MedicalGetAllUsersSucssesState());
  //   })
  //       .catchError((error)
  //   {
  //     emit(MedicalGetAllUsersErrorState(error.toString()));
  //   });
  //
  //
  // }
  void sendMessages({
    required String dataTime,
    required String text,
    required String receiverId,
  }) {
    MessageModel model1 = MessageModel(
      text: text,
      dataTime: dataTime,
      receiverId: receiverId,

    );
//set my chats

    //UID Ikn7dUOdKKNaoJBKEJOOQjhToLV2
    FirebaseFirestore.instance
        .collection('messages')
        .add(model1.toMap())
        .then((value) {
      print(value);
      emit(MedicalSendMesssagesSucssesState());
    })
        .catchError((error) {
      print(error.toString());
      emit(MedicalSendMesssagesErrorState());
    });
// set reseiver chats
//     FirebaseFirestore.instance
//         .collection('user')
//         .doc(receiverId)
//         .collection('chat')
//         .doc(model!.uId)
//         .collection('message')
//         .add(model1.toMap())
//         .then((value) {
//       emit(MedicalSendMesssagesSucssesState());
//
//     })
//         .catchError((error){
//       emit(MedicalSendMesssagesErrorState());
//     });
  }
  deletemag() {
    FirebaseFirestore.instance.collection('messages')
        .doc('') // <-- Doc ID to be deleted.
        .delete() // <-- Delete
        .then((_) {
      print('Deleted');
      emit(MedicalDeleteMesssagesSucssesState());
    })
        .catchError((error) {
      print('Delete failed: $error');
      emit(MedicaldeleteMesssagesSucssesState());
    });
  }

  // void getMessages(
  //
  //     ){
  //
  //   // MessageModel model = MessageModel(
  //   //      text: text,
  //   //     dataTime: dataTime,
  //   //    receiverId: receiverId,
  //   //  senderId: uId,
  //   //
  //   // );
  //
  //   FirebaseFirestore.instance
  //       .collection('messages')
  //   .doc()
  //   .snapshots()
  //   .listen((event) {
  //
  //     event.data()!.forEach((key, value) {
  //
  //     });
  //
  //   });
  //
  // }
  //    .add(model.toMap())
  //     .then((value) {
  //   emit(MedicalGetMesssagesSucssesState());
  //
  // })
  //     .catchError((error){
  //   emit(MedicalGetMesssagesErrorState());
  // });
  MessageModel? usermodel;
  getdata() async {
    FirebaseFirestore.instance.collection('messages')
        .add(
        {
          'text': 'bottom'
        });

    //create an instance of Firestore.


    // StreamSubscription<QuerySnapshot<Map<String, dynamic>>> users =

    // .snapshots()
    // .listen((event) {
    //   message= [];
    //   event.docs.forEach((element) {
    //     print(element['text']);
    //   });
    //
    // });
    //  await users.get().then((value) {
    //    message =[];
    //    value.docs.forEach((element) {
    //  //   message.add(MessageModel.fromjson(element.data()));
    //
    //    //  SocialModel.fromjson(element.data());
    //     print(element.data());
    //   });
    // });

    // DocumentReference getData = FirebaseFirestore.instance.collection('messages').doc('CHmpxRMEDZgNoUFAo1Jc');
    // await getData.get().then((value){
    //   print(value.data());
    // });

  }
  final firestore = FirebaseFirestore.instance;

  // A simple Future which will return the fetched Product in form of Object.
  Future<MessageModel?> getProducts() async {
    final querySnapshot = await firestore.collection('products').get();
    final products = querySnapshot.docs.map((e) {
      // Now here is where the magic happens.
      // We transform the data in to Product object.
      final model = MessageModel.fromjson(e.data());
      // Setting the id value of the product object.
      return model;
    }).toList();
    return usermodel;
  }

  List<SocialModel> alluser = [];
  getUsers() async {
    FirebaseFirestore.instance.collection('users').snapshots();
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.get().then((value) {
      for (var element in value.docs) {
        alluser.add(SocialModel.fromjson(element.data()));
        print(element.data());
      }
      emit(MedicalGetAllUsersSucssesState());
      // print('$value mohamed==========================');
      print('======================mo==========');
    }).catchError((error) {
      emit(MedicalGetAllUsersErrorState(error.toString()));
      print('======================mohamed==========');
    });
  }
  List<MessageModel> messages = [];
   getmessages ()async
      {
  var messages = await FirebaseFirestore.instance
        .collection('messages')
    .snapshots()
  .listen((event) {
  });
          emit(MedicalGetMesssagesSucssesState());
    }
  late SharedPreferences sharedPreferences;
  saveData({
    required String key,
    required dynamic value
  }) async
  {
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

  Future<void> getsports() async {
    if (news.length == 0) {
      emit(NewsLodingnewsStates());
      DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'sources': 'techcrunch',
            'apiKey': 'c9e2a047a41c43cca0ca5f777a0a82dc',
          }


        //https://newsapi.org/v2/top-headlines?
        // sources=techcrunch
        // &apiKey=c9e2a047a41c43cca0ca5f777a0a82dc


        // var request = http.Request('GET', Uri.parse(
        //     'https://newsapi.org/v2/everything?q=health&from=2023-02-04&sortBy=publishedAt&apiKey=c9e2a047a41c43cca0ca5f777a0a82dc'));
        //
        //
        // http.StreamedResponse response = await request.send();
        //
        // if (response.statusCode == 200) {
        //   print(await response.stream.bytesToString());
        // }
        // else {
        //   print(response.reasonPhrase);
        // }

      ).then((value) {
        //print(value.data.toString());

        print(news[0]['title']);
        emit(NewsGetvews());
      }).catchError((error) {
        print(error.toString());
        emit(NewsGetnewsError(error.toString()));
      });
    } else {
      emit(NewsGetvews());
    }
  }

  List<dynamic> business = [];
  var uri = 'https://newsapi.org/v2/top-headlines?apiKey=c9e2a047a41c43cca0ca5f777a0a82dc&sources=techcrunch';

  void getbusiness(){

    if(business.length == 0){
      emit(NewsLodingnewsStates());
      DioHelper.getData(
          url: 'v2/everything',
          query:{
            'q':'tesla',
            'from':'2023-02-07',
            'sortBy':'publishedAt',
            'apiKey':'c9e2a047a41c43cca0ca5f777a0a82dc',
          } ).then((value) {
        //print(value.data.toString());

        business = value.data['articles'];
        // print(business[0]);
        emit(NewsGetvews());
      //https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=c9e2a047a41c43cca0ca5f777a0a8
      }).catchError((error){
        print(error.toString());
        emit(NewsGetnewsError(error.toString()));
      });
    }else{
      emit(NewsGetvews());
    }

  }
//https://newsapi.org/
// v2/top-headlines?
// country=us
// &category=business
// &apiKey=c9e2a047a41c43cca0ca5f777a0a82dc

  }


