import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical_services/Screens/Drugs/fighting_the_infection/Alcohol_and_sterilization/Alcohol_and_sterilization.dart';
import 'package:medical_services/Screens/Drugs/fighting_the_infection/face_masks/face_masks.dart';
import 'package:medical_services/Screens/Drugs/fighting_the_infection/fighting_the_infection/fighting_the_infectionn.dart';
import 'package:medical_services/model/lang.dart';

class Fighting_the_infection extends StatelessWidget {
  Lang _lang =Lang();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getfightingtheinfection(),style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
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
                height: 220,
                aspectRatio: 16/1,
                viewportFraction: 0.8,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_lang.getfightingtheinfection(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> fighting_the_infectionn()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/12345.jpg'),width: 95,),
                        SizedBox(height: 10,),
                        Text(_lang.getfightingtheinfection(),style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Alcohol_and_sterilization()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/4001.jpg'),width: 150,),
                        SizedBox(height: 10,),

                        Text(_lang.getAlcoholandsterilization(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> face_masks()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/210.jpg'),width: 94,),
                        const SizedBox(height: 10,),
                        Text(_lang.getfacemasks(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),


        ],
      ),
    );
  }
}

