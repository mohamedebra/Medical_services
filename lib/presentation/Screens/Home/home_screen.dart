import 'dart:convert';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/Drugs/Drugs.dart';
import 'package:medical_services/presentation/Screens/map/map.dart';
import 'package:medical_services/presentation/Screens/news/news.dart';
import 'package:medical_services/presentation/Screens/search/search.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:medical_services/presentation/Screens/doctors/doctor_انف.dart';
import 'package:medical_services/presentation/Screens/doctors/doctor_باطنه.dart';
import 'package:medical_services/presentation/Screens/doctors/doctor_جراحه.dart';
import 'package:medical_services/presentation/Screens/doctors/doctor_جلديه.dart';
import 'package:medical_services/presentation/Screens/doctors/doctor_عظام.dart';
import 'package:medical_services/presentation/Screens/doctors/doctor_قلب.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    getdata();
    setState(() {
      _lang.getLang();
    });
// TODO: implement initState
    super.initState();
  }
  Lang _lang =Lang();
  List business = [];
  void getdata()async{
    var response = await Dio().get('http://medicalservices.great-site.net/api/v1/specializations');
    if(response.statusCode == 200)
    {

      print(response.data);

      SharedPreferences pref =
      await SharedPreferences
          .getInstance();
      pref
          .setBool('data', true)
          .then((value) {
        if (value == true) {
          setState(() {
            business = response.data['data'] as List ;

          });
        }
        print("$pref ////////////////////////////////");

      });

    }
    else{
      print(response.statusCode);
    }}
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, MedialState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 20,
                    left: 20
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              _lang.getclinic(),
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: Colors.blue[900]),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: BorderDirectional(
                                bottom: BorderSide(color: Colors.grey),
                                top: BorderSide(color: Colors.grey),
                                start: BorderSide(color: Colors.grey),
                                end: BorderSide(color: Colors.grey),
                              )
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(_lang.getsearchHome(),style: TextStyle(color: Colors.grey[400],fontSize: 12),),
                                ),
                                SizedBox(width: 20,),
                                Icon(IconBroken.Search,color: Colors.grey[500],),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CarouselSlider(
                          items: [
                            Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://img.freepik.com/premium-photo/healthcare-medical-concept-medicine-doctor-with-stethoscope-hand-patients-come_34200-313.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://img.freepik.com/free-photo/health-still-life-with-copy-space_23-2148854034.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: NetworkImage("https://img.freepik.com/free-photo/young-male-psysician-with-patient-measuring-blood-pressure_1303-17877.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 180,
                            aspectRatio: 16/10,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 3),
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            scrollDirection: Axis.horizontal,
                          )
                      ),
                      Text(
                        _lang.gethelpHome1(),
                        style: TextStyle(
                            fontSize: 20  , fontWeight: FontWeight.w800,color: Colors.indigo[900],inherit: false),
                      ),
                      Text(
                        _lang.gethelpHome2(),
                        style: TextStyle(
                            fontSize: 20  , fontWeight: FontWeight.w800,color: Colors.indigo[900],inherit: false
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => News_Medical()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/news.png'),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    _lang.getNews(),
                                    style: TextStyle(
                                        color: Colors.deepPurple[300],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )

                                  //my prescription
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Drugs()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'images/asd.png'),

                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    _lang.getpharmacy(),
                                    style: TextStyle(
                                        color: Colors.deepPurple[300],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Maps()));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.deepPurpleAccent.shade100,
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/maps.png'),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    _lang.getMaps(),
                                    style: TextStyle(
                                        color: Colors.deepPurple[300],
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[100],

                              ),
                              width: 250,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    _lang.getmajors(),
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ConditionalBuilder(
                        condition: business.length > 0,
                        builder: (BuildContext context) => Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 80,
                                    width: MediaQuery.of(context).size.width * .43,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[100]
                                    ),
                                    child: InkWell(

                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                image: AssetImage(
                                                    'images/8 (3).png'),
                                                width: 63,
                                                height: 63,
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${business[2]['name']}',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Leather()));

                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: Container(
                                    height: 80,
                                    width: MediaQuery.of(context).size.width* .43,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[100]
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Surgery()));

                                      },
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [

                                              Text(
                                                '${business[1]['name']}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                ),
                                              ),

                                              SizedBox(
                                                width: 30,
                                              ),
                                              Image(
                                                image: AssetImage(
                                                    'images/suger.jpeg'),
                                                width: 63,
                                                height: 63,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 80,
                                    width: MediaQuery.of(context).size.width * .43,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Colors.grey[100]),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Inside()));

                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Image(
                                                  image: AssetImage(
                                                      'images/8 (5).png'),
                                                  width: 63,
                                                  height: 63,
                                                ),
                                              ),
                                              SizedBox(width: 30,),
                                              Expanded(
                                                child: Text(
                                                  '${business[3]['name']}',//_lang.getesoteric()
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * .43,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Colors.grey[100]
                                    ),
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Nose()));

                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              '${business[5]['name']}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Image(
                                              image: AssetImage(
                                                  'images/nose.png'),
                                              width: 63,
                                              height: 63,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Colors.grey[100]),
                                    height: 80,
                                    width: MediaQuery.of(context).size.width *.43,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Bones()));

                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Image(
                                                  image: AssetImage(
                                                      'images/heart.png'),
                                                  width: 63,
                                                  height: 63,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 22,
                                              ),
                                              Expanded(
                                                child: Text('${business[0]['name']}',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                    )),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Colors.grey[100]
                                    ),
                                    height: 80,
                                    width: MediaQuery.of(context).size.width *.43,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Heart()));

                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  '${business[4]['name']}',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Image(
                                                  image: AssetImage(
                                                      'images/bones.png'),
                                                  width: 63,
                                                  height: 63,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        fallback: (BuildContext context) => Center(child: CircularProgressIndicator(),),
                      ),
                    ],
                  ),
                ),
              ),

            );
          },
        ));
  }


}
