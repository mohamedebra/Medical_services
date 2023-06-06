import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/Drugs/without_prescription_Bedon/Common%20symptomatic%20treatments/Common_symptomatic_treatments.dart';
import 'package:medical_services/presentation/Screens/Drugs/without_prescription_Bedon/Pain_management/Pain_management.dart';
import 'package:medical_services/presentation/Screens/Drugs/without_prescription_Bedon/first_aid/first_aid.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Without_Prescription extends StatelessWidget {

  Lang _lang = Lang();

  @override
  Widget build(BuildContext context) {
    var controller = PageController();


    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getMedicineswithoutaprescription(),style: TextStyle(fontSize: 20),),
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
            child: Text(_lang.getSearchbysection(),style: TextStyle(fontSize: 25),),
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Common_symptomatic_treatments()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/4_443.jpg'),width: 117,height: 120,),
                        SizedBox(height: 10,),
                        Text(_lang.getCommonsymptomatictreatments(),style: TextStyle(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Pain_management()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/82301.jpg'),width: 103,),
                        SizedBox(height: 10,),

                        Text(_lang.getPaintreatments(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> First_aid()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image(image: AssetImage('images/147852.jpg'),width: 64,),
                        SizedBox(height: 10,),

                        Text(_lang.getfirstaid(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
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
