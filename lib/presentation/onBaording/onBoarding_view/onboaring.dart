import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/onborading_model.dart';
import 'package:medical_services/presentation/Screens/setting/language/lang.dart';
import 'package:medical_services/presentation/onBaording/onBoarding_view_model/onBoarding_viewModel.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:medical_services/presentation/onBaording/onBoarding_view/get.dart';

class OnBaording extends StatefulWidget {
  @override
  State<OnBaording> createState() => _OnBaordingState();
}

class _OnBaordingState extends State<OnBaording> {



  var controller = PageController();

  OnBoardingViewModel _onBoardingViewModel = OnBoardingViewModel();

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
  _bind(){
    _onBoardingViewModel.start();
  }
  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SliderViewObject>(
      stream: _onBoardingViewModel.outputSliderViewObject,
      builder: ( context, snapshot) {
        return getContontWidget(snapshot.data);
      },
    );
  }



  Widget getContontWidget(SliderViewObject? sliderViewObject){
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
                  _onBoardingViewModel.onPageChange(index);
                },
                controller: controller,
                itemBuilder: (context, index) =>
                    buildBaordingitime(sliderViewObject.baordindModel),
                itemCount: sliderViewObject!.numOfSlides,
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
                    count: sliderViewObject.numOfSlides),
                Spacer(),
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.blue[50],
                  child: FloatingActionButton(
                    tooltip: 'Next',
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    onPressed: () {
                      if (sliderViewObject.currentIndex < 2) {
                        controller.nextPage(
                            duration: const Duration(
                              milliseconds: 750,
                            ),
                            curve: Curves.fastOutSlowIn);
                      } else if(sliderViewObject.currentIndex == 2){
                        sumip();

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

  @override
  void dispose() {
    _onBoardingViewModel.dispose();
    super.dispose();
  }
}
