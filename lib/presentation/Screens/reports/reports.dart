import 'dart:convert';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Reports extends StatefulWidget {
  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  List business = [];
  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ConditionalBuilder(
          condition: business.length > 0,
          builder: (BuildContext context) {
            return ListView.separated(
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    child: Image(
                                      image: NetworkImage(
                                          '${business[index]['image']}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text('${business[index]['price']} جنيه'),
                                ],
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('${business[index]['name']}'),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Text(
                                      '${business[index]['created_at']}',
                                      style: TextStyle(color: Colors.grey[300]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Container(height: 2,width: 1,color: Colors.grey[200],),
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey[300],
                    ),
                itemCount: business.length);
          },
          fallback: (BuildContext context) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
  // void getdata()async{
  //
  //   // var response = await Dio().get('http://ugt.517.mywebsitetransfer.com/api/v1/user-products');
  //   // if(response.statusCode == 200)
  //   // {
  //   //   setState(() {
  //   //     business = response.data ['data'];
  //   //   });
  //   //   print(response.data);
  //   //
  //   // }
  //   // else{
  //   //   print(response.statusCode);
  //   // }
  //   var uri = 'http://ugt.517.mywebsitetransfer.com/api/v1/user-products';
  //   Map<String, String> headers = {
  //     'Content-Type': 'application/json',
  //   };
  //   final response = await http.get(Uri.parse(uri,headers as int));
  //
  //   if (response.statusCode == 200) {
  //
  //     var oje = json.decode(response.body);
  //     business  = json.decode(response.body);
  //
  //   }
  //   else {
  //     print(response.reasonPhrase);
  //   }
  //
  // }

  // ConditionalBuilder(
  //         condition: business.length > 0 ,
  //         builder: (BuildContext context) =>
  //         fallback: (BuildContext context) => Center(child: Image(image: AssetImage('images/reports.png'),),)
  void getdata() async {
    var response = await Dio().get('http://192.168.1.12:8000/api/v1/products');
    // if(response.statusCode == 200)
    // {
    //   setState(() {
    //     business = response.data['data'] as List;
    //   });
    //
    // }
    // else{
    //   print(response.statusCode);
    // }

    if (response.statusCode == 200) {
      final body = response.data;

      setState(() {
        business = response.data['data'] as List;
      });
      print(response.data);
    } else {
      return null;
    }
  }
}
