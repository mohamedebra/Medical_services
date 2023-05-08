import 'package:flutter/material.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Neurosurgery/Curriculum_Vitae_doctor3.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Ear,%20nose%20and%20throat/Ahmed%20Alfy.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Ear,%20nose%20and%20throat/Curriculum_Vitae_doctor4.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Ear,%20nose%20and%20throat/drIslam.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Ear,%20nose%20and%20throat/drMohamed.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Ear,%20nose%20and%20throat/dr_shady.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/Ear,%20nose%20and%20throat/dr_sherif.dart';
import 'package:medical_services/model/lang.dart';

class Nose extends StatefulWidget {
  const Nose({Key? key}) : super(key: key);

  @override
  State<Nose> createState() => _NoseState();
}

class _NoseState extends State<Nose> {
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
        title: Text(_lang.getEarandnosedoctors(),style: TextStyle(fontSize: 20),),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
                top: 40,
                start: 20,
                end: 20,
                bottom: 10
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Curriculum_Vitae_doctor4()));
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
                              borderRadius: BorderRadius.circular(70)
                          ),
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
                                          image: AssetImage('images/احمد الشاعر.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Ahmed ElShaer',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Ear, nose and throat',
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
                top: 5,
                start: 20,
                end: 20,
                bottom: 10
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dr_Sherif()));
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
                              borderRadius: BorderRadius.circular(70)
                          ),
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
                                          image: AssetImage('images/شريف زايد.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Sherif Zayed',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Ear, nose and throat',
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
                top: 5,
                start: 20,
                end: 20,
                bottom: 10
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dr_Shady()));
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
                              borderRadius: BorderRadius.circular(70)
                          ),
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
                                          image: AssetImage('images/شادي السيد عبدالعزيز.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Shady Al-Sayed Abdulaziz',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.visible,
                                            maxLines: 1,
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Ear, nose and throat',
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
                top: 5,
                start: 20,
                end: 20,
                bottom: 10
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dr_Ahmed_Alfy()));
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
                              borderRadius: BorderRadius.circular(70)
                          ),
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
                                          image: AssetImage('images/احمد الالفي.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Ahmed Alfy',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.visible,
                                            maxLines: 1,
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Ear, nose and throat',
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
                top: 5,
                start: 20,
                end: 20,
                bottom: 10
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dr_Islam()));
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
                              borderRadius: BorderRadius.circular(70)
                          ),
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
                                          image: AssetImage('images/اسلام محمد.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Islam Mohammed',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.visible,
                                            maxLines: 1,
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Ear, nose and throat',
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
                top: 5,
                start: 20,
                end: 20,
                bottom: 10
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dr_Mohamed()));
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
                              borderRadius: BorderRadius.circular(70)
                          ),
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
                                          image: AssetImage('images/محمد رفعت.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dr ,  Mohamed Refaat',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.visible,
                                            maxLines: 1,
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'Ear, nose and throat',
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
