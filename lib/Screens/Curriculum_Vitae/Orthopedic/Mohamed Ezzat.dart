import 'package:flutter/material.dart';
import 'package:medical_services/Screens/chat/chats_doctors/chat_dr1.dart';
import 'package:medical_services/Screens/chat/chats_doctors/orthopedic/Mohamed_Ezzat_chat.dart';
import 'package:medical_services/Screens/reservation/reservation_Cardiology_consultant/reservation_ahmed_fathi.dart';
import 'package:medical_services/Screens/reservation/reservation_Orthopedic/Mohamed_Ezzat_resevtion.dart';

import '../../chat/chats_doctors/orthopedic/Ahmed_Fathi_chat.dart';

class Mohamed_Ezzat extends StatelessWidget {
  const Mohamed_Ezzat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('images/محمد عزت.jpg'),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Dr , Mohamed Ezzat Hussein',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 5,),

                    Text('Orthopedic doctor',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    Text('المواعيد',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Text('11:00 PM  - 12:00 PM   ',style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue
                    ),),
                    Text('سعر الحجز',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Text('300 ج ',style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue
                    ),),

                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Stack(
              children: [
                Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Colors.blue[100],
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                  child: Row(
                    children: [
                      Expanded(child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.people_alt_outlined,size: 35,),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text('166+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),),
                              Text('patients',style: TextStyle(fontSize: 15,color: Colors.black54),)
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.insights,size: 35,),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text('10 years',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),),
                              Text('Experiences',style: TextStyle(fontSize: 15,color: Colors.black54),)
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 50,),


              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(50),
                        topStart: Radius.circular(50),

                      ),
                      color: Colors.blue[100]
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('About doctor',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 15,),
                        Text('''
Specialist in orthopedics, hand, upper limb and sports injuries, Cairo University - specialist in orthopedic surgery, spine and joints
Subspecialties:
Adult orthopedic surgery
Pediatric orthopedic surgery
Adult spine surgery
Sports injuries, binoculars and joints
Pediatric spine surgery
                        ''',style: TextStyle(
                            color: Colors.grey[700]
                        ),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child:    IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Mohamed_Ezzat_chat()));
                              }, icon: Icon(Icons.chat,color: Colors.white,)),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * .6,),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child:    IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Mohamed_Ezzat_resevtion()));
                              }, icon: Icon(Icons.price_change_outlined,color: Colors.white,)),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
