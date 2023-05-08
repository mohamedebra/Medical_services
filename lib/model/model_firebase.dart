class FireModel
{
  String? name;
  String? category_id;
  String? email;
  String? phone;
  String? token;
  String? image;
  String? password;
  String? type;


  FireModel({
    this.category_id,
    this.name,
    this.email,
    this.phone,
    this.token,
    this.password,
    this.type


  });

  FireModel.fromjson( json)
  {
    email =json['email'];
    category_id = json['category_id'];
    token =json['token'];
    name =json['name'];
    phone =json['phone'];
    password =json['password'];

  }

  Map<String,dynamic> toMap(){
    return{
      'name' : name,
      'token' : token,
      'password' : password,
      'email' : email,
      'phone' : phone,
      'type' : type,
      'category_id' : category_id,


    };
  }



}



