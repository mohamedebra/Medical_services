class FireModel {
  late String category_id;
  late String name;
  late String email;
  late String phone;
  late String token;
  late String image;
  late String password;
  late String type;

  FireModel(
      {required this.category_id,
      required this.name,
      required this.email,
      required this.phone,
      required this.token,
      required this.password,
      required this.type});

  FireModel.fromjson(json) {
    email = json['email'];
    category_id = json['category_id'];
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
      'category_id': category_id,
    };
  }
}
