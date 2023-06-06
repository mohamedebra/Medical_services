class SocialModel
{
  String? name;
  String? email;
  String? phone;
  String? uId;
  String? image;
  String? password;

  SocialModel({
    this.name,
    this.email,
    this.phone,
    this.uId,
    this.password
  });

  SocialModel.fromjson( json)
  {
    email =json['email'];
    uId =json['uId'];
    name =json['name'];
    phone =json['phone'];
    image =json['image'];

  }

  Map<String,dynamic> toMap(){
    return{
      'name' : name,
      'uId' : uId,
      'password' : password,
      'email' : email,
      'phone' : phone,
      'image' : image,

    };
  }



}



