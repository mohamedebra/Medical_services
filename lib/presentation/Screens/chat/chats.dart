
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

  @override
  Widget build(BuildContext context) {

    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        var cubit = AppCubit.get(context).alluser;
        var users = FirebaseFirestore.instance.collection('users');
        List<SocialModel> usersList = [];
        if (snapshot.hasError) {
          return const CircularProgressIndicator();
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        return BlocProvider(
          create: (BuildContext context) => AppCubit(),
          child: BlocConsumer<AppCubit, MedicalState>(
            listener: (context, state) {},
            builder: (context, state) {

              return Scaffold(
                body: ConditionalBuilder(
                  condition: cubit.length >= 0,
                  builder: (BuildContext context) {
                    return ListView.separated(
                        itemBuilder: (context, index) =>
                            buildChats(cubit[index], context),
                        separatorBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.grey,
                              ),
                            ),
                        itemCount: cubit.length);
                  },
                  fallback: (BuildContext context) => const CircularProgressIndicator(),
                ),
              );
            },
          ),
        );
      }

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

