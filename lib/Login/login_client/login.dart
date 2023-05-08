import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/Login/login_client/register.dart';
import 'package:medical_services/Login/login_doctor/homelayout.dart';
import 'package:medical_services/Screens/Home/Home.dart';
import 'package:medical_services/Screens/setting/language/lang.dart';
import 'package:medical_services/cubit/cubit.dart';
import 'package:medical_services/cubit/states.dart';
import 'package:medical_services/main.dart';
import 'package:medical_services/model/chacheHelper.dart';
import 'package:medical_services/model/lang.dart';
import 'package:medical_services/model/model.dart';
import 'package:medical_services/model/modelLogin.dart';
import 'package:medical_services/model/model_firebase.dart';
import 'package:medical_services/style/style.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailcontrollr = TextEditingController();

  var textcontrollr = TextEditingController();

  var passwordcontrollr = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Lang _lang = Lang();

  String? topItms;
  List<String> itemList = ['EN', 'AR', 'FR'];

//   Future<void> registerwithEmail({
//     required email,
//     required password
// })async{
//     try{
//
//       var url = Uri.parse('http://ugt.517.mywebsitetransfer.com/api/v1/user/auth/login');
//       var headers = {'Accept':'application/json'};
//       Map body = {
//         'email' : email,
//         'password' : password
//       };
//
//       http.Response response =
//           await http.post(url, body: jsonEncode(body),headers: headers);
//
//       if (response.statusCode == 200){
//         // final json = jsonDecode(response.body);
//         print('Register ==========================================');
//         Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
//       }
//
//     }
//     catch(e){
//       print(e.toString());
//     }
//
//   }

  DropdownButtonHideUnderline languae() {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        onTap: () {
          var local = Locale('en', '');

          if (local != null) {
            // MyApp.setLocale(context, )
          }
        },
        items: [
          "EN",
          "AR",
        ]
            .map(
              (e) => DropdownMenuItem(
                child: Text('$e'),
                value: e,
              ),
            )
            .toList(),
        onChanged: (value) async {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.getString('lang');
          _lang.setLang(value!);
          lang = value;

          setState(() {
            topItms = value!;

            // MyApp.setLocale(context, value as Locale);
          });
          if (itemList[0] == topItms) {
            Locale('en');
          } else if (itemList[1] == topItms) {
            Locale('ar');
          }
        },
        value: topItms,
      ),
    );
  }

  @override
  void initState() {
    setState(() {
      _lang.getLang();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedialState>(
        listener: (context, state) {
          if (state is MedicalLoginScussesState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                (route) => false);
              Fluttertoast.showToast(
                  msg: "Welcome Medical +",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.blueGrey,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
          }
          // else{
          //   Fluttertoast.showToast(
          //       msg: "Welcome Medical +",
          //       toastLength: Toast.LENGTH_LONG,
          //       gravity: ToastGravity.CENTER,
          //       timeInSecForIosWeb: 2,
          //       backgroundColor: Colors.blueGrey,
          //       textColor: Colors.white,
          //       fontSize: 16.0
          //   );
          // }

          else if (state is MedicalLoginErrorState) {
            // Fluttertoast.showToast(
            //     msg: "ادخل البيانات بشكل صحيح",
            //     toastLength: Toast.LENGTH_LONG,
            //     gravity: ToastGravity.CENTER,
            //     timeInSecForIosWeb: 2,
            //     backgroundColor: Colors.blueGrey,
            //     textColor: Colors.white,
            //     fontSize: 16.0
            // );

          }
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
              body: SingleChildScrollView(
            child: Stack(
              children: [
                Image(
                  image: AssetImage('images/login1.jpg'),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height,
                ),
                Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 25),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .35),
                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.start,
                                //   children: [
                                //     Padding(
                                //       padding: const EdgeInsets.symmetric(horizontal: 15),
                                //       child: Text('Person',style: TextStyle(fontSize: 15,color: Colors.white),),
                                //     ),
                                //   ],
                                // ),
                                // TextFormField(
                                //   cursorColor: Colors.black,
                                //     smartQuotesType: SmartQuotesType.enabled,
                                //     controller: textcontrollr,
                                //     keyboardType: TextInputType.name,
                                //     validator: (val) {
                                //       if (val!.isEmpty) {
                                //         return 'Please enter your name';
                                //       }
                                //     },
                                //     decoration: InputDecoration(
                                //       fillColor: Colors.white30,
                                //       filled: true,
                                //       focusColor: Colors.white,
                                //       prefix: Icon(Icons.person),
                                //       border: OutlineInputBorder(
                                //           borderRadius:
                                //               BorderRadius.circular(20),
                                //           borderSide: BorderSide(
                                //               color: Colors.black,
                                //               width: 3,
                                //               style: BorderStyle.none)),
                                //     )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        '${getLang(context, 'Emaill')}',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                    controller: emailcontrollr,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your email address';
                                      }
                                    },
                                    decoration: InputDecoration(
                                      fillColor: Colors.white30,
                                      filled: true,
                                      prefix: Icon(IconBroken.Message),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        '${getLang(context, 'Password')}',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                TextFormField(
                                    controller: passwordcontrollr,
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                    },
                                    onFieldSubmitted: (value) {
                                      // if(formKey.currentState!.validate()){
                                      //   Logincubit.get(context)(
                                      //       email: emailcontrollr.text,
                                      //       password: passwordcontrollr.text
                                      //   );
                                      // }
                                    },
                                    obscureText:
                                        AppCubit.get(context).isPassword,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white30,
                                      filled: true,
                                      prefix: Icon(IconBroken.Lock),
                                      // suffix: Icon(Icons.remove_red_eye_rounded),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          AppCubit.get(context).changeIcon();
                                        },
                                        icon: Icon(AppCubit.get(context).icon),
                                      ),

                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )),
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    child: TextButton(
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            FireModel? response =
                                                await ModelLogin.loginuser(
                                                    email: emailcontrollr.text,
                                                    password:
                                                        passwordcontrollr.text);
                                            SharedPreferences pref =
                                                await SharedPreferences
                                                    .getInstance();
                                            pref
                                                .setBool('token', true)
                                                .then((value) {
                                              if (value == true) {
                                                Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Home()),
                                                    (route) => false);
                                              }
                                            });

                                            Fluttertoast.showToast(
                                                msg: "Welcome Medical +",
                                                toastLength: Toast.LENGTH_LONG,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 2,
                                                backgroundColor:
                                                    Colors.blueGrey,
                                                textColor: Colors.white,
                                                fontSize: 16.0);

                                            if (DioErrorType.response == 401) {
                                              Fluttertoast.showToast(
                                                  msg:
                                                      "The your email is incorrect.",
                                                  toastLength:
                                                      Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIosWeb: 2,
                                                  backgroundColor:
                                                      Colors.blueGrey,
                                                  textColor: Colors.white,
                                                  fontSize: 16.0);
                                            }
                                          }
                                          // else {
                                          //
                                          // }

                                          cubit.userLogin(email: emailcontrollr.text, password: passwordcontrollr.text);

                                        },
                                        child: Text(
                                          _lang.getSignIn(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        )),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue[300],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${getLang(context, "Don' t have an account?")}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Register()));
                                        },
                                        child: Text(
                                          '${getLang(context, "Register")}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.blue[900],
                                          ),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }

  // Future<void> signUpUser() async {
  //   final formData = {
  //     'name': emailcontrollr.text,
  //     // 'password': ,
  //     'grant_type': 'password',
  //   };
  //   try {
  //     Dio dio =  Dio();
  //     var url = 'http://ugt.517.mywebsitetransfer.com/api/v1/user/auth/login';
  //
  //     Response response = await dio.post(url);
  //     var oje = jsonDecode(response.data);
  //     print(oje);
  //     final responseData = await dio.post<Map<String, dynamic>>
  //
  //       ('/token',
  //         options: Options(
  //
  //           method: 'POST',
  //           headers: <String, dynamic>{},
  //         ),
  //
  //         data: formData);
  //
  //
  //     print(responseData.toString());
  //   } catch (e) {
  //   }
  //
  // }
}