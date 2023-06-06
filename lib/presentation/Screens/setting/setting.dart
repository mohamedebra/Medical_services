// import 'package:conditional_builder_null_safety/example/example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/main.dart';
import 'package:medical_services/presentation/Screens/setting/favorite_doctor/favorite_doctor.dart';
import 'package:medical_services/presentation/Screens/setting/help/help.dart';
import 'package:medical_services/presentation/onBaording/onBoarding_view/onboaring.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _lang.getLang();
    });
    super.initState();
  }

  String? topItms;
  Lang _lang = Lang();
  List<String> itemList = ['EN', 'AR', 'FR'];
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedialState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            color: Colors.blue[100]),
                      ),
                      Container(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.blue[100],
                              backgroundImage: AssetImage('images/123.png'),
                            ),
                            CircleAvatar(
                                radius: 20,
                                child: IconButton(
                                    onPressed: () {
                                      AppCubit.get(context).getImage();
                                    },
                                    icon: Icon(IconBroken.Camera)))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  _lang.getMyprofile(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: InkWell(
                //     onTap: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context) => Pro_Member()));
                //
                //     },
                //     child: Container(
                //       height: 70,
                //       width: double.infinity,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(20),
                //           color: Colors.white70),
                //       child: Row(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: CircleAvatar(
                //                 backgroundColor: Colors.grey[300],
                //                 radius: 35,
                //                 child: Icon(
                //                   IconBroken.Paper
                //                   ,
                //                   size: 35,
                //                 )),
                //           ),
                //           Text(
                //             'Become A Pro member',
                //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 35,
                                child: Icon(
                                  IconBroken.Play,
                                  size: 30,
                                )),
                          ),
                          Expanded(
                            child: Text(
                              _lang.getlanguage(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // SizedBox(width: 45,),
                          Container(
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: DropdownButtonHideUnderline(
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
                                  SharedPreferences pref =
                                      await SharedPreferences.getInstance();
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Container(
                //     height: 70,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         color: Colors.white70),
                //     child: InkWell(
                //       onTap: (){
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=> Invite_a_friend()));
                //       },
                //       child: Row(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: CircleAvatar(
                //                 backgroundColor: Colors.grey[300],
                //                 radius: 35,
                //                 child: Icon(
                //                   IconBroken.User,
                //                   size: 30,
                //                 )),
                //           ),
                //           Text(
                //             'invite friends',
                //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //           ),
                //
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white70),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Favorite_doctor()));
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 35,
                                child: Icon(
                                  IconBroken.Heart,
                                  size: 35,
                                )),
                          ),
                          Text(
                            _lang.getfavorite(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Help()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 35,
                                child: Icon(
                                  IconBroken.Document,
                                  size: 35,
                                )),
                          ),
                          Text(
                            _lang.gethelp(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    // Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => OnBaording()),
                    //         (route) => false);
                    SharedPreferences pref =
                        await SharedPreferences.getInstance();
                    pref.setBool('token', false).then((value) {
                      if (value == true) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnBaording()),
                            (route) => false);
                      }
                    });
                    pref.setBool('onBoarding', false).then((value) => (value) {
                          if (value == true) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnBaording()),
                                (route) => false);
                          }
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 35,
                                child: Icon(
                                  IconBroken.Logout,
                                  size: 35,
                                )),
                          ),
                          Text(
                            _lang.getsignOut(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
