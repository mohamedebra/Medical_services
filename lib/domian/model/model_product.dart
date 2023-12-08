class Data {
  int? _id;
  String? _name;
  int? _price;
  String? _desc;
  String? _createdAt;

  Data(
      this._id,
        this._name,
        this._price,
        this._desc,
        this._createdAt,
        ) ;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _desc = json['desc'];
    _createdAt = json['created_at'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['price'] = this._price;
    data['desc'] = this._desc;
    data['created_at'] = this._createdAt;

    return data;
  }
}

