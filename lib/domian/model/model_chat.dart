class MessageModel {
  String? receiverId;
  String? dataTime;
  String? text;

  MessageModel({
    this.receiverId,
    this.dataTime,
    this.text,
  });

  MessageModel.fromjson(json) {
    receiverId = json['receiverId'];
    dataTime = json['dataTime'];
    text = json['text'];
  }

  Map<String, dynamic> toMap() {
    return {
      'receiverId': receiverId,
      'dataTime': dataTime,
      'text': text,
    };
  }
}
