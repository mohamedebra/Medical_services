import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List business = [];
  Lang _lang = Lang();
  @override
  void initState() {
    getdata();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getNotifications()),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Clear all'))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[100]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [

                                CircleAvatar(
                                  backgroundColor: Colors.red[100],
                                  child: Icon(Icons.notification_important),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${business[index]['title']}',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        '${business[index]['created_at']}',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 1,
                          width: double.infinity,

                        ),
                      ),
                  itemCount: business.length),
            ),
          ],
        ),
      ),
    );
  }

  void getdata() async {
    //
    // print(business[0]['title']);
    //
    // var uri = 'https://newsapi.org/v2/top-headlines?apiKey=c9e2a047a41c43cca0ca5f777a0a82dc&sources=techcrunch';
    //
    // final response = await http.get(Uri.parse(uri));
    //
    // if (response.statusCode == 200) {
    //
    //   var oje = json.decode(response.body);
    //   business  = json.decode(response.body);
    //
    // }
    // else {
    //   print(response.reasonPhrase);
    // }

    // https:newsapi.org/v2/everything?q=tesla&from=2023-02-09&sortBy=publishedAt&apiKey=c9e2a047a41c43cca0ca5f777a0a82dc
    var response =
        await Dio().get('http://192.168.1.12:8000/api/v1/news');
    if (response.statusCode == 200) {
      setState(() {
        business = response.data['data'] as List;
      });
      print(response.data);
    } else {
      print(response.statusCode);
    }
  }
}
