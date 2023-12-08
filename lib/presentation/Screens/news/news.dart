import 'dart:convert';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:http/http.dart' as http;
import 'package:medical_services/constants/string.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/presentation/Screens/news/webview.dart';

class News_Medical extends StatefulWidget {
  static List business = [];

  @override
  State<News_Medical> createState() => _News_MedicalState();
}

class _News_MedicalState extends State<News_Medical> {
  Lang _lang = Lang();

  @override
  void initState() {
    getdata();
    AppCubit.get(context).getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedicalState>(
        listener: (context, state) {},
        builder: (context, state) {
          List cubit = AppCubit
              .get(context)
              .news;
          return Scaffold(
            appBar: AppBar(
              title: Text(
                _lang.getNews(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            body: ConditionalBuilder(
              condition: News_Medical.business.length > 0,
              builder: (BuildContext context) =>
                  ListView.separated(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context,
                        index,) =>
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    WebViewScreen(
                                        News_Medical.business[index]['image2']),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              children: [
                                Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "${News_Medical
                                                .business[index]['image']}"),
                                        //${News_Medical.business[index]['urlToImage']}
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 100,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "${News_Medical
                                                .business[index]['title']}",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            // style: Theme.of(context).textTheme.headline5
                                          ),
                                        ),
                                        Expanded(
                                            child: Text(
                                              '${News_Medical
                                                  .business[index]['created_at']}',
                                              style: TextStyle(
                                                  color: Colors.grey),
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                        ),
                    itemCount: News_Medical.business.length,
                  ),
              fallback: (BuildContext context) =>
                  Center(
                    child: CircularProgressIndicator(),
                  ),
            ),
          );
        },
      ),
    );
  }

  Widget buildAitims(article) =>
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewScreen(article['image2']),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage('${article['urlToImage']}'),
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "${article['title']}",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          // style: Theme.of(context).textTheme.headline5
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                          child: Text(
                            '${article['publishedAt']}',
                            style: TextStyle(color: Colors.grey),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );

  void getdata() async {
    var response = await ModelLogin.getNews();
    setState(() {
      News_Medical.business = response;
    });
  }
}