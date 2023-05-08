import 'dart:convert';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medical_services/Login/botton_admin_client.dart';
import 'package:medical_services/Login/login_client/login.dart';
import 'package:medical_services/Login/login_doctor/next.dart';
import 'package:medical_services/Screens/Home/Home.dart';
import 'package:medical_services/Screens/Home/home_screen.dart';
import 'package:medical_services/Screens/chat/chats.dart';
import 'package:medical_services/Screens/news/news.dart';
import 'package:medical_services/Screens/news/test.dart';
import 'package:medical_services/Screens/news/webview.dart';
import 'package:medical_services/Screens/search/search.dart';
import 'package:medical_services/Screens/setting/language/lang.dart';
import 'package:medical_services/cubit/cubit.dart';
import 'package:medical_services/cubit/states.dart';
import 'package:medical_services/dio/dio.dart';
import 'package:medical_services/model/chacheHelper.dart';
import 'package:medical_services/model/model.dart';
import 'package:medical_services/onBaording/onboaring.dart';
import 'onBaording/open_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}

String lang = 'EN';
var onBoarding;
var token;
late final Widget startWidget;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  CacheHelper.init();
  SharedPreferences pref = await SharedPreferences.getInstance();
  Widget widget;
  onBoarding = await pref.get('OnBoarding');
  token = await pref.get('token');
  print(token);
  token = await pref.get('token');
  if (onBoarding == true) {
    if (token == true) {
      widget = Home();
    } else {
      widget = OnBaording();
    }
  } else {
    widget = OnBaording();
  }
  print(onBoarding);
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final Widget startWidget;
  MyApp({super.key, required this.startWidget});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AppCubit()),
        BlocProvider(
          create: (context) => AppCubit()..getUsers(),
        ),
      ],
      child: BlocConsumer<AppCubit, MedialState>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
                fontFamily: 'jannah',
                appBarTheme: AppBarTheme(
                    color: Colors.blueGrey[50],
                    titleTextStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: 'jannah'),
                    iconTheme: const IconThemeData(
                      color: Colors.blueGrey,
                    ),
                    elevation: 0,
                    centerTitle: true),
                scaffoldBackgroundColor: Colors.grey[50],
                bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                  selectedLabelStyle: TextStyle(fontFamily: 'jannah'),
                  type: BottomNavigationBarType.shifting,
                  unselectedItemColor: Colors.grey,
                ),
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.blue[300],
                )),
            debugShowCheckedModeBanner: false,
            home: LayoutBuilder(
              builder: (context, BoxConstraints constrains) {
                String os = Platform.operatingSystem;
                print(os);
                print(constrains.maxWidth.toInt());
                return startWidget;
              },
            ),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              AppLocale.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [
              Locale("en", ""),
              Locale("ar", ""),
            ],
            localeResolutionCallback: (currentLan, suportLan) {
              if (currentLan != null) {
                for (Locale locale in suportLan) {
                  if (locale.languageCode == currentLan.languageCode) {
                    return currentLan;
                  }
                }
              }
              return suportLan.first;
            },
            locale: const Locale('en'),
          );
        },
      ),
    );
  }
}