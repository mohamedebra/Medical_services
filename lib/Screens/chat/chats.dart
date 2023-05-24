// ignore_for_file: unnecessary_null_comparison

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/Screens/chat/chats_doctors/chat_dr1.dart';

import 'package:medical_services/cubit/cubit.dart';
import 'package:medical_services/cubit/states.dart';
import 'package:medical_services/model/model.dart';
import 'package:medical_services/model/model_chat.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        var cubit = AppCubit.get(context);
        var users = FirebaseFirestore.instance.collection('users');
        // ignore: unrelated_type_equality_checks
        if (cubit.alluser != null || cubit.alluser != 0) {
          List<SocialModel> usersList = [];
          var uId = FirebaseAuth.instance.currentUser!.uid;

          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            if (snapshot.data!.docs[i]['uId'] != uId) {
              usersList.add(SocialModel.fromjson(snapshot.data!.docs[i]));
            }
          }

          return BlocProvider(
            create: (BuildContext context) => AppCubit(),
            child: BlocConsumer<AppCubit, MedialState>(
              listener: (context, state) {},
              builder: (context, state) {
                return ConditionalBuilder(
                  condition: cubit.alluser.length >= 0,
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
                  fallback: (BuildContext context) =>
                      Center(child: CircularProgressIndicator()),
                );
              },
            ),
          );
        }
        else {
          return const Center(child: CircularProgressIndicator());
        }
      },
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
//             );
