abstract class MedicalState {}

class MedicalIntialstate extends MedicalState {}

class MedicalChangeBottonNav extends MedicalState {}

class MedicalNewPostNav extends MedicalState {}

class MedicalRegister extends MedicalState {}

class MedicalLoginScussesState extends MedicalState {
  final String? uId;

  MedicalLoginScussesState(this.uId);
}

class MedicalLoginScussesStatee extends MedicalState {}

class MedicalLoginLodingState extends MedicalState {}

class MedicalLoginErrorState extends MedicalState {
  final String error;
  MedicalLoginErrorState(this.error);
}

class MedicalRegesterScussesState extends MedicalState {}

class MedicalRegesterErrorState extends MedicalState {
  final String error;
  MedicalRegesterErrorState(this.error);
}

class MedicalCreateRegister extends MedicalState {}

class MedicalCreateRegisterSuccessstate extends MedicalState {}

class MedicalCreateRegisterError extends MedicalState {
  String error;
  MedicalCreateRegisterError(this.error);
}

class ChangeIcon extends MedicalState {}

class ChangeImage extends MedicalState {}

class ChangeColor extends MedicalState {}

class ChangeColor1 extends MedicalState {}

class ChangeIconFavorie extends MedicalState {}

class ChangeIconFavorie1 extends MedicalState {}

class ChangeIconFavorie2 extends MedicalState {}

class ChangeIconFavorie3 extends MedicalState {}

class MedicalGetAllUsersLodingState extends MedicalState {}

class MedicalGetAllUsersSucssesState extends MedicalState {}

class MedicalGetAllUsersErrorState extends MedicalState {
  String error;
  MedicalGetAllUsersErrorState(this.error);
}

class MedicalSendMesssagesSucssesState extends MedicalState {}

class MedicalSendMesssagesErrorState extends MedicalState {}

class MedicalDeleteMesssagesSucssesState extends MedicalState {}

class MedicaldeleteMesssagesSucssesState extends MedicalState {}

class MedicalGetMesssagesSucssesState extends MedicalState {}

class MedicalGetMesssagesErrorState extends MedicalState {}

class MedecailImageErorrState extends MedicalState {}

class MedicalImageSucsessState extends MedicalState {}

class NewsLodingnewsStates extends MedicalState {}

class NewsGetNews extends MedicalState {}

class BuyProduct extends MedicalState {}
class BuyItemsProduct extends MedicalState {}
class DataProductLoaded extends MedicalState {}
class DataProductLoadedError extends MedicalState {}

class BuyProductError extends MedicalState {
  String error;
  BuyProductError(this.error);
}

class NewsGetnewsError extends MedicalState {
  String error;
  NewsGetnewsError(this.error);
}
