import 'package:flutter/material.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/presentation/Screens/Curriculum_Vitae/Orthopedic/Ahmed%20Fathi.dart';
import 'package:medical_services/presentation/Screens/Curriculum_Vitae/Orthopedic/Bahauddin.dart';
import 'package:medical_services/presentation/Screens/Curriculum_Vitae/Orthopedic/Curriculum_Vitae_doctor5.dart';
import 'package:medical_services/presentation/Screens/Curriculum_Vitae/Orthopedic/Mohamed%20Ezzat.dart';
import 'package:medical_services/presentation/Screens/Curriculum_Vitae/Orthopedic/Muhammad%20Abul%20Majd.dart';
import 'package:medical_services/presentation/Screens/Curriculum_Vitae/Orthopedic/Walid%20Mahmoud.dart';

class Bones extends StatefulWidget {
  const Bones({Key? key}) : super(key: key);

  @override
  State<Bones> createState() => _BonesState();
}

class _BonesState extends State<Bones> {
  Lang _lang = Lang();
  @override
  void initState() {
    setState(() {
      _lang.getLang();
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getOrthopedicdoctors(),
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 40, start: 20, end: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Curriculum_Vitae_doctor5()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/تامر يحيي.jpg'),
                                          width: 70,
                                          height: 70,
                                        ),
                                        Image(
                                          image: AssetImage('images/star3.png'),
                                          width: 50,
                                        ),
                                      ],
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Tamer Yehia',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Orthopedic doctor',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 5, start: 20, end: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mohamed_Ezzat()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image:
                                              AssetImage('images/محمد عزت.jpg'),
                                          width: 70,
                                          height: 70,
                                        ),
                                        Image(
                                          image: AssetImage('images/star3.png'),
                                          width: 50,
                                        ),
                                      ],
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr , Mohamed Ezzat Hussein',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Orthopedic doctor',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 5, start: 20, end: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ahmed_Fathi()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/احمد فتحي.jpg'),
                                          width: 70,
                                          height: 70,
                                        ),
                                        Image(
                                          image: AssetImage('images/star3.png'),
                                          width: 50,
                                        ),
                                      ],
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr , Ahmed Fathi El-Shimi',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Orthopedic doctor',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 5, start: 20, end: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bahauddin()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/بهاء الدين.jpg'),
                                          width: 70,
                                          height: 70,
                                        ),
                                        Image(
                                          image: AssetImage('images/star3.png'),
                                          width: 50,
                                        ),
                                      ],
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr , Bahauddin Saeed Al-Khudari',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Orthopedic doctor',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 5, start: 20, end: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Muhammad_Abul_Majd()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/محمد ابو المجد.jpg'),
                                          width: 70,
                                          height: 70,
                                        ),
                                        Image(
                                          image: AssetImage('images/star3.png'),
                                          width: 50,
                                        ),
                                      ],
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr , Muhammad Abul Majd',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Orthopedic doctor',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 5, start: 20, end: 20, bottom: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Walid_Mahmoud()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'images/وليد محمود.jpg'),
                                          width: 70,
                                          height: 70,
                                        ),
                                        Image(
                                          image: AssetImage('images/star3.png'),
                                          width: 50,
                                        ),
                                      ],
                                      alignment: Alignment.bottomRight,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr , Walid Mahmoud',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Orthopedic doctor',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
