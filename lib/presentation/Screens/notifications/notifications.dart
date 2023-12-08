import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:medical_services/lang/lang.dart';

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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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

    var response = await Dio().get('https://rowadtest.infosaseg.com/api/v1/news');
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
