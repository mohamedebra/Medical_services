import 'package:flutter/material.dart';
import 'package:medical_services/presentation/Screens/chat/chats_doctors/inside/Talaat_Al-Lisi_chat.dart';
import 'package:medical_services/presentation/Screens/reservation/reservation_inside/reservation_Talaat_Al_Lisi.dart';

class Talaat_Al_Lisi extends StatelessWidget {
  const Talaat_Al_Lisi({Key? key}) : super(key: key);

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
                        backgroundImage: AssetImage('images/طلعت الليسي.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dr , Talaat Al-Lisi',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Internal diseases',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      'المواعيد',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '11:00 PM  - 7:00 PM   ',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    Text(
                      'سعر الحجز',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '200 ج ',
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
                            children: [
                              Text(
                                '390+',
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
                  height: MediaQuery.of(context).size.height * .8,
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
Consultant of general internal medicine, endocrinology and diabetes in Al-Azhar University hospitals Member of the European and Egyptian Diabetes Association Lecturer of general internal medicine at the Faculty of Medicine Al-Azhar PhD in general internal diseases, endocrine diseases and diabetes
Academic and professional experience:
1/ Academic Experience (2014)
PhD in Medical Sciences from the Faculty of Medicine, Al-Azhar University - Egypt
2/ Professional Experience (2008)
Now a consultant lecturer of general internal medicine and gland diseases in Al-Azhar University Hospitals
Subspecialties: Adult Diabetes and Endocrinology
         ''',
                          style: TextStyle(color: Colors.grey[700]),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 40,
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
                                                Talaat_Al_Lisi_chat()));
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
                                                Reservation_Talaat_Al_Lisi()));
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
