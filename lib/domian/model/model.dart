class AuthModel {
   String? name;
   String? email;
   String? phone;
   String? token;
   String? image;
   String? password;
   String? type;

  AuthModel(
      {
       this.name,
       this.email,
       this.phone,
       this.token,
       this.password,
       this.type});

  AuthModel.fromjson(json) {
    email = json['email'];
    token = json['token'];
    name = json['name'];
    phone = json['phone'];
    password = json['password'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'token': token,
      'password': password,
      'email': email,
      'phone': phone,
      'type': type,
    };
  }
}

class MessageModel {
  String? receiverId;
  String? senderId;
  String? dataTime;
  String? text;

  MessageModel({
    this.receiverId,
    this.dataTime,
    this.text,
    this.senderId
  });

  MessageModel.fromjson(json) {
    receiverId = json['receiverId'];
    senderId = json['senderId'];
    dataTime = json['dataTime'];
    text = json['text'];
  }

  Map<String, dynamic> toMap() {
    return {
      'receiverId': receiverId,
      'senderId': senderId,
      'dataTime': dataTime,
      'text': text,
    };
  }
}

class SocialModel {
  String? name;
  String? email;
  String? phone;
  String? uId;
  String? image;
  String? password;

  SocialModel({this.name, this.email, this.phone, this.uId, this.password});

  SocialModel.fromjson(json) {
    email = json['email'];
    uId = json['uId'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uId': uId,
      'password': password,
      'email': email,
      'phone': phone,
      'image': image,
    };
  }
}

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

class Product{
  int id;
  int category_id;
  String name;
  String created_at;
  String desc;
  String image;

  Product(
      this.id,
      this.name,
      this.image,
      this.category_id,
      this.created_at,
      this.desc
      );

}















