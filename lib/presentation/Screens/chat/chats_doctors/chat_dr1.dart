// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/domian/model/model_chat.dart';
import 'package:medical_services/presentation/Screens/chat/model_chat/video_call.dart';

class ChatDr1 extends StatefulWidget {
  @override
  State<ChatDr1> createState() => _ChatDr1State();
}

class _ChatDr1State extends State<ChatDr1> {
  SocialModel? model;

  final TextEditingController _numberCtrl = TextEditingController();

  @override
  void initState() {
    _numberCtrl.text = "01015613089";
    super.initState();
  }

  // MessageModel model = MessageModel();
  var messageContror = TextEditingController();

  final controller = ScrollController();

  // var massageControlar = TextEditingController();
  final docRef = FirebaseFirestore.instance.collection("users").doc();
  var mag = FirebaseFirestore.instance.collection('messages').doc('id');

  static String topItms = 'EN';

  static List<String> itemList = ['EN', 'AR', 'FR'];
// Remove the 'capital' field from the document
  final updates = <String, dynamic>{
    "capital": FieldValue.delete(),
  };

  @override
  Widget build(BuildContext context) {
    _callNumber() async {
      const number = '01015613089'; //set the number here
      bool? res = await FlutterPhoneDirectCaller.callNumber(number);
    }

    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('messages')
            .orderBy('dataTime', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          var mag =
              FirebaseFirestore.instance.collection('messages').doc().delete();

          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          List<MessageModel> message = [];
          for (var i = 0; i < snapshot.data!.docs.length; i++) {
            message.add(MessageModel.fromjson(snapshot.data!.docs[i]));
          }
          // final docs = snapshot.data!.docs;
          return BlocProvider(
            create: (BuildContext context) => AppCubit(),
            child: BlocConsumer<AppCubit, MedialState>(
              listener: (context, state) {},
              builder: (context, state) {
                var uId = FirebaseAuth.instance.currentUser!.uid;
                return Scaffold(
                  appBar: AppBar(
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 17,
                          backgroundImage: NetworkImage(
                              'https://firebasestorage.googleapis.com/v0/b/medical-371515.appspot.com/o/WhatsApp%20Image%202023-04-19%20at%202.23.09%20AM.jpeg?alt=media&token=668dfc5a-0809-489b-9ab5-7dbdfb3b1748'),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Dr, Mohamed ebrahim',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Vedio_call()));
                          },
                          icon: Icon(Icons.video_call_outlined)),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: IconButton(
                            onPressed: () => _callNumber(),
                            icon: Icon(Icons.call)),
                      ),
                    ],
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                              reverse: true,
                              controller: controller,
                              itemBuilder: (context, index) {
                                return message[index].receiverId == uId
                                    ? buildmessage(message[index])
                                    : buildyourmessage(message[index]);
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 15,
                                  ),
                              itemCount: message.length),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: TextFormField(
                                    controller: messageContror,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'type your message here ...'),
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.blue[300],
                                child: MaterialButton(
                                  onPressed: () {
                                    //
                                    AppCubit.get(context).sendMessages(
                                      dataTime: DateTime.now().toString(),
                                      text: messageContror.text,
                                      receiverId: FirebaseAuth
                                          .instance.currentUser!.uid
                                          .toString(),
                                    );
                                    messageContror.clear();
                                    controller.animateTo(0,
                                        //controller.position.maxScrollExtent
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.fastOutSlowIn);
                                  },
                                  child: Icon(Icons.send),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });
  }

  Widget buildmessage(MessageModel message) => Align(
        alignment: AlignmentDirectional.centerStart,
        child: InkWell(
          onTap: () async {
            // // AppCubit.get(context).deletemag();
            // FirebaseFirestore.instance.collection('messages')
            //     .doc() // <-- Doc ID to be deleted.
            //     .delete() ;
            // AppCubit.get(context).deletemag();
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.grey[300]),
            child: Text('${message.text}'),
          ),
        ),
      );
  Widget buildyourmessage(MessageModel message) => InkWell(
        onTap: () {
          AppCubit.get(context).deletemag();
        },
        child: Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(10),
                  topStart: Radius.circular(10),
                  bottomStart: Radius.circular(10),
                ),
                color: Colors.blue[100]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${message.text}'),
            ),
          ),
        ),
      );

  deletemeg(String id) {
    FirebaseFirestore.instance
        .collection('messages')
        .doc(id) // <-- Doc ID to be deleted.
        .delete();
  }

  Widget buildChats(SocialModel model, BuildContext context) => Row(
        children: [
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/medical-371515.appspot.com/o/WhatsApp%20Image%202023-04-19%20at%202.23.09%20AM.jpeg?alt=media&token=668dfc5a-0809-489b-9ab5-7dbdfb3b1748'),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'Dr, Mohamed ebrahim',
            style: TextStyle(fontSize: 15),
          )
        ],
      );
}
//builder:(BuildContext context, AsyncSnapshot snapshot)

// ConditionalBuilder(
//                   condition: AppCubit.get(context).message.length > 0,
//                   builder: (BuildContext context) =>
//                   fallback: (BuildContext context) => Center(child: CircularProgressIndicator()),
//  child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     IconButton(onPressed: ()async{
//                                       return deletemeg(snapshot.data!.docs[index].id);
//
//                                     }, icon: const Icon(Icons.delete),color: Colors.red,)
//                                   ],
//                                 ),
