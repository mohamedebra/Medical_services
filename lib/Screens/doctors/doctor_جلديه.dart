import 'package:flutter/material.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/leather/Curriculum_Vitae_doctor2.dart';
import 'package:medical_services/Screens/Curriculum_Vitae/leather/kamar%20Banna.dart';
import 'package:medical_services/model/lang.dart';

class Leather extends StatefulWidget {
  const Leather({Key? key}) : super(key: key);

  @override
  State<Leather> createState() => _LeatherState();
}

class _LeatherState extends State<Leather> {
  Lang _lang = Lang();
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _lang.getLang();
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getDermatologists(),style: TextStyle(fontSize: 20),),

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
                        builder: (context) => Curriculum_Vitae_doctor2()));
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
                                          image: AssetImage('images/سمر حسام.jpg'),
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
                                          'Dr , Samar Hossam Omar',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'skin desies',
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
                        builder: (context) => kamar_Banna()));
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
                                          image: AssetImage('images/قمريه البنا .jpg'),
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
                                          'Dr , kamar Banna',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          'skin desies',
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
