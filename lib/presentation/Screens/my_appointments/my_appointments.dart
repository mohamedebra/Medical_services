import 'package:flutter/material.dart';

class My_Appointments extends StatelessWidget {
  const My_Appointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Appointments'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 30,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('images/doctor2.png'),
                                        width: 70,
                                        height: 70,
                                      ),
                                      // Icon(Icons.messenger_outlined,color: Colors.blue,size: 20,)
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
                                        'Dr ,  Wafaa Abu Talib',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Gastroenterologist doctor',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        '09:00 AM  - 04:00 PM',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.blue[300]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 30,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('images/doctor.png'),
                                        width: 70,
                                        height: 70,
                                      ),
                                      // Icon(Icons.messenger_outlined,color: Colors.blue,size: 20,)
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
                                        'Dr ,  Mohamed Ebrahim',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Cardiologistr',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        '09:00 AM  - 04:00 PM',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.blue[300]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                elevation: 30,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image(
                                        image: AssetImage('images/doctor3.png'),
                                        width: 70,
                                        height: 70,
                                      ),
                                      // Icon(Icons.messenger_outlined,color: Colors.blue,size: 20,)
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
                                        'Dr ,  Hossam Mohamed',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                        maxLines: 2,
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Ophthalmologist',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        '09:00 AM  - 04:00 PM',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.blue[300]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
