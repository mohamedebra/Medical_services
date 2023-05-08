abstract class MedialState{}


class MedicalIntialstate extends MedialState{}

class MedicalChangeBottonNav extends MedialState{}

class MedicalNewPostNav extends MedialState{}

class MedicalRegister extends MedialState{}

class MedicalLoginScussesState extends MedialState{
  final String uId;

  MedicalLoginScussesState(this.uId);
}

class MedicalLoginLodingState extends MedialState{}

class MedicalLoginErrorState extends MedialState{
  final String error;
  MedicalLoginErrorState(this.error);
}

class MedicalRegesterScussesState extends MedialState{}

class MedicalRegesterErrorState extends MedialState{
  final String error;
  MedicalRegesterErrorState(this.error);
}

class MedicalCreateRegister extends MedialState{}

class MedicalCreateRegisterSuccessstate extends MedialState{}

class MedicalCreateRegisterError extends MedialState{
  String error;
  MedicalCreateRegisterError(this.error);
}

class ChangeIcon extends MedialState{}

class ChangeImage extends MedialState{}

class ChangeColor extends MedialState{}

class ChangeColor1 extends MedialState{}

class ChangeIconFavorie extends MedialState{}

class ChangeIconFavorie1 extends MedialState{}

class ChangeIconFavorie2 extends MedialState{}

class ChangeIconFavorie3 extends MedialState{}

class MedicalGetAllUsersLodingState extends MedialState{}

class MedicalGetAllUsersSucssesState extends MedialState{}

class MedicalGetAllUsersErrorState extends MedialState{
  String error;
  MedicalGetAllUsersErrorState(this.error);
}

class MedicalSendMesssagesSucssesState extends MedialState{}

class MedicalSendMesssagesErrorState extends MedialState{}

class MedicalDeleteMesssagesSucssesState extends MedialState{}

class MedicaldeleteMesssagesSucssesState extends MedialState{}


class MedicalGetMesssagesSucssesState extends MedialState{}

class MedicalGetMesssagesErrorState extends MedialState{}

class MedecailImageErorrState extends MedialState{}

class MedicalImageSucsessState extends MedialState{}

class NewsLodingnewsStates extends MedialState{}

class NewsGetvews extends MedialState{}

class NewsGetnewsError extends MedialState{
  String error;
  NewsGetnewsError(this.error);

}
