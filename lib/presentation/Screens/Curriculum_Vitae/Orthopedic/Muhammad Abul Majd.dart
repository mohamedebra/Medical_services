import 'package:flutter/material.dart';
import 'package:medical_services/presentation/Screens/chat/chats_doctors/orthopedic/Muhammad_Abul_Majd_chat.dart';
import 'package:medical_services/presentation/Screens/reservation/reservation_Orthopedic/Muhammad_Abul_Majd_resevation.dart';

class Muhammad_Abul_Majd extends StatelessWidget {
  const Muhammad_Abul_Majd({Key? key}) : super(key: key);

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
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage('images/محمد ابو المجد.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dr , Muhammad Abul Majd',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Orthopedic doctor',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      'المواعيد',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '11:00 PM  - 12:00 PM   ',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    Text(
                      'سعر الحجز',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '700 ج ',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
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
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.people_alt_outlined,
                              size: 35,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: const [
                              Text(
                                '306+',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    fontSize: 20),
                              ),
                              Text(
                                'patients',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.insights,
                              size: 35,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text(
                                '10 years',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    fontSize: 20),
                              ),
                              Text(
                                'Experiences',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(50),
                        topStart: Radius.circular(50),
                      ),
                      color: Colors.blue[100]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About doctor',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '''
Head of Orthopedics Department, Ahmed Maher Teaching Hospital, PhD in Orthopedics - Ain Shams University Member of the Egyptian Orthopedic Association Member of the European Orthopedic Association
       ''',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Muhammad_Abul_Majd_chat()));
                                  },
                                  icon: Icon(
                                    Icons.chat,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .6,
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Muhammad_Abul_Majd_resevation()));
                                  },
                                  icon: Icon(
                                    Icons.price_change_outlined,
                                    color: Colors.white,
                                  )),
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
