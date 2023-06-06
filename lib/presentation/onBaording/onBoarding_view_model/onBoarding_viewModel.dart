import 'dart:async';

import 'package:medical_services/domian/model/onborading_model.dart';
import 'package:medical_services/presentation/base/base_View_model.dart';

class OnBoardingViewModel extends BaseViewModel with OnboardingViewModelInput , OnBoardingViewModelOutput{

  StreamController _streamController = StreamController<SliderViewObject>();
  late final List<BaordindModel> _list ;
  int currentIndex = 0;



  @override
  void dispose() {
    // TODO: implement dispose
    _streamController.close();
  }

  @override
  void start() {
    // TODO: implement start
    _list = boarding;
    _postDatView();
  }

  @override
  int getPrevious() {
    int previousIndex = --currentIndex ;
    if(previousIndex == -1){
      previousIndex = _list.length -1;
    }
    return previousIndex;
  }

  @override
  int goNext() {
    int nextIndex = ++currentIndex;
    if(nextIndex == _list.length){
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  void onPageChange(int index) {
    currentIndex = index;
    _postDatView();
  }



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

  _postDatView(){
    inputSliderViewObject.add(SliderViewObject(_list[currentIndex], currentIndex, _list.length));
  }



  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);
}

abstract class OnboardingViewModelInput{
  int goNext();
  int getPrevious();
  void onPageChange(int index);

  Sink get inputSliderViewObject;
}
abstract class OnBoardingViewModelOutput{
  Stream<SliderViewObject> get  outputSliderViewObject;
}