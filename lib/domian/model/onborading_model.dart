class BaordindModel {
  final String image;
  final String title;
  final String body;

  BaordindModel({required this.image, required this.title, required this.body});
}

class SliderViewObject {
  BaordindModel baordindModel;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.baordindModel, this.currentIndex, this.numOfSlides);
}
