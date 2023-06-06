// ignore_for_file: unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/presentation/Screens/chat/chats_doctors/chat_dr1.dart';
import 'package:shimmer/shimmer.dart';
import '../../../business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';

class Chats extends StatelessWidget {
  final List<String> days = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    int hour = time.hour;

    final int minute = time.minute;
    final int day = time.weekday;
    final int month = time.month;
    final int dayInMonth = time.day;
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        var cubit = AppCubit.get(context).alluser;
        var users = FirebaseFirestore.instance.collection('users');
        List<SocialModel> usersList = [];
        if (snapshot.hasError) {
          return SlideToUnlockPage();
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return SlideToUnlockPage();
        }

        return BlocProvider(
          create: (BuildContext context) => AppCubit(),
          child: BlocConsumer<AppCubit, MedialState>(
            listener: (context, state) {},
            builder: (context, state) {
              var uId = FirebaseAuth.instance.currentUser!.uid;

              for (int i = 0; i < snapshot.data!.docs.length; i++) {
                if (snapshot.data!.docs[i]['uId'] != uId) {
                  usersList.add(SocialModel.fromjson(snapshot.data!.docs[i]));
                }
              }
              return Scaffold(
                body: ConditionalBuilder(
                  condition: usersList.length >= 0,
                  builder: (BuildContext context) {
                    return ListView.separated(
                        itemBuilder: (context, index) =>
                            buildChats(usersList[index], context),
                        separatorBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                        itemCount: usersList.length);
                  },
                  fallback: (BuildContext context) => SlideToUnlockPage(),
                ),
              );
            },
          ),
        );
      }
      // else {
      //   return Stack(
      //     fit: StackFit.expand,
      //     children: <Widget>[
      //       Image.asset(
      //         'images/doctor_client.jpg',
      //         fit: BoxFit.cover,
      //       ),
      //       Positioned(
      //         top: 48.0,
      //         right: 0.0,
      //         left: 0.0,
      //         child: Shimmer.fromColors(
      //           baseColor: Colors.black,
      //           highlightColor: Colors.white,
      //           child: Center(
      //             child: Column(
      //               children: <Widget>[
      //                 Text(
      //                   '${hour < 10 ? '0$hour' : '$hour'}:${minute < 10 ? '0$minute' : '$minute'}',
      //                   style: const TextStyle(
      //                     fontSize: 60.0,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: EdgeInsets.symmetric(vertical: 4.0),
      //                 ),
      //                 Text(
      //                   '${days[day - 1]}, ${months[month - 1]} $dayInMonth',
      //                   style: const TextStyle(fontSize: 24.0, color: Colors.white),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   );
      // }
      ,
    );
  }

  Widget buildChats(SocialModel model, BuildContext context) => InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatDr1()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('${model.image}'),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr, ${model.name}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'welcome',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      );
}

class SlideToUnlockPage extends StatelessWidget {
  final List<String> days = <String>[
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  final List<String> months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  SlideToUnlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime time = DateTime.now();
    final int hour = time.hour;
    final int minute = time.minute;
    final int day = time.weekday;
    final int month = time.month;
    final int dayInMonth = time.day;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide To Unlock'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'images/doctor_client.jpg',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 48.0,
            right: 0.0,
            left: 0.0,
            child: Shimmer.fromColors(
              baseColor: Colors.black,
              highlightColor: Colors.white,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Medical +',
                      style: const TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                    ),
                    Text(
                      '${days[day - 1]}, ${months[month - 1]} $dayInMonth',
                      style:
                          const TextStyle(fontSize: 24.0, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// ConditionalBuilder(
//               condition: AppCubit.get(context).users.length > 0,
//               builder: (BuildContext context) =>  ListView.separated(
//                   physics: BouncingScrollPhysics(),
//                   itemBuilder: (context,index) => buildChats(AppCubit.get(context).users[index]),
//                   separatorBuilder: (context,index) => Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Container(
//                       width: double.infinity,
//                       height: 1,
//                       color: Colors.grey,
//                     ),
//                   ) ,
//                   itemCount: AppCubit.get(context).users.length),
//               fallback: (BuildContext context) => Center(child: CircularProgressIndicator()),
//
//
