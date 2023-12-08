import 'dart:convert';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:medical_services/domian/model/modelLogin.dart';

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
  void getdata() async {

    var response = await ModelLogin.getreports();
    setState(() {
      business = response;
    });

  }
}
