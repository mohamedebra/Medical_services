import 'package:flutter/material.dart';
import 'package:medical_services/Login/botton_admin_client.dart';
import 'package:medical_services/Login/login_client/login.dart';
import 'package:medical_services/Login/login_doctor/login_admin.dart';
import 'package:medical_services/Screens/setting/language/lang.dart';
import 'package:medical_services/model/chacheHelper.dart';
import 'package:medical_services/onBaording/get.dart';
import 'package:medical_services/style/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BaordindModel {
  final String image;
  final String title;
  final String body;

  BaordindModel({required this.image, required this.title, required this.body});
}

class OnBaording extends StatefulWidget {
  @override
  State<OnBaording> createState() => _OnBaordingState();
}

class _OnBaordingState extends State<OnBaording> {
  List<BaordindModel> boarding = [
    BaordindModel(
      image: 'images/ppoo.png',
      title: 'Who are we?',
      body:
          "Specialized proficiency in the field of medical supplies and medical instruments\n\nOur team of highly qualified and hardworking professionals anticipates the future with a renewed sense of enthusiasm to break the norm to become an exceptional provider of medical and non-medical supplies and grow beyond the region in the global market.",
    ),
    BaordindModel(
      image: 'images/pp.png',
      title: 'Medical Services',
      body:
          "Our philosophy\nRemember, teamwork begins with building trust. And the only way to do this is to overcome our need for your help to work with a team of professionals, in order to develop a mutual relationship with the most impressive medical companies in an unconventional business manner that defines our proposed position to be very different. Proficiency committed to conceptual marketing trends based on comprehensive business management and diversified service approaches to meet real market demands and future trends.",
    ),
    BaordindModel(
      image: 'images/pppo.png',
      title: 'Medical Services',
      body:
          'We strive to design, implement and manage medical programs for corporate clients according to their various needs. We offer innovative solutions, compatible with the unique requirements of each company, through programs designed to suit the specific needs of each client',
    ),
  ];



  var controller = PageController();
  bool isLast = false;
  void sumip() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    // CacheHelper.savedata(key: 'OnBoaring', value: false).then((value) {
    //   if(value ){
    //     Navigator.pushAndRemoveUntil(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => Get_Started()),
    //             (route) => false);
    //
    //   }
    // });

    pref.setBool('OnBoarding', true).then((value) {
      if(value == true){
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => Get_Started()),
                    (route) => false);
      }
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        actions: [
          TextButton(
              onPressed: () {
                sumip();
              },
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${getLang(context, 'Skip')}',
                      style: TextStyle(color: Colors.blue[300]),
                    ),
                  ],
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                controller: controller,
                itemBuilder: (context, index) =>
                    buildBaordingitime(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: controller,
                    effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        dotColor: Colors.grey,
                        dotWidth: 10,
                        expansionFactor: 4,
                        paintStyle: PaintingStyle.fill,
                        activeDotColor: Colors.lightBlue),
                    count: boarding.length),
                Spacer(),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.blue[50],
                  child: FloatingActionButton(
                    tooltip: 'Next',
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    onPressed: () {
                      if (isLast) {
                        sumip();
                      } else {
                        controller.nextPage(
                            duration: Duration(
                              milliseconds: 750,
                            ),
                            curve: Curves.fastOutSlowIn);
                        //fastLinearToSlowEaseIn
                      }
                    },
                    child: Icon(IconBroken.Arrow___Right,size: 27,),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBaordingitime(BaordindModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child:Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                      bottom: 7

                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(300),
                            topLeft: Radius.circular(270),
                            bottomRight: Radius.circular(260),
                            bottomLeft: Radius.circular(290),

                          ),
                          color: Colors.blue[300]
                      ),

                    ),
                  ),
                  Image(

                    image: AssetImage(model.image),



                  )

                ],
              ),

          ),
          SizedBox(height: 25,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${model.title}',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${model.body}',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 8,
                ),
              ],
            ),
          )
        ],
      );
}
