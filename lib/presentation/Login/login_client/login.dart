import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/main.dart';
import 'package:medical_services/presentation/Screens/Home/Home.dart';
import 'package:medical_services/presentation/Screens/setting/language/lang.dart';
import 'package:medical_services/presentation/resources/font_manger.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:http/http.dart' as http;
import 'package:medical_services/presentation/resources/values.manger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:medical_services/presentation/register/register_client/register.dart';

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
            topItms = value;

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
      child: BlocConsumer<AppCubit, MedicalState>(
        listener: (context, state) {
          if (state is MedicalLoginScussesState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
                (route) => false);
            Fluttertoast.showToast(
                msg: "Welcome Medical +",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blueGrey,
                textColor: Colors.white,
                fontSize: FontSize.s16);
          } else if (state is MedicalLoginErrorState) {
            Fluttertoast.showToast(
                msg: "The Email or password is wrong",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blueGrey,
                textColor: Colors.white,
                fontSize: FontSize.s16);
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
                            padding: const EdgeInsets.all(AppPadding.p20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: AppSize.s25),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .35),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        'Email',
                                        style: TextStyle(
                                            fontSize: AppSize.s15, color: Colors.white),
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
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppPadding.p15),
                                      child: Text(
                                        'Password',
                                        style: TextStyle(
                                            fontSize: AppSize.s15, color: Colors.white),
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
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue[300],
                                    ),
                                    child: TextButton(
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            cubit.loginUser(email: emailcontrollr.text, password: passwordcontrollr.text);
                                          }

                                        },
                                        child: Text(
                                          _lang.getSignIn(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: FontSize.s20,
                                          ),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: AppSize.s10,
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
                                            fontSize: AppSize.s18,
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

}
