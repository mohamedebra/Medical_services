import 'package:flutter/material.dart';
import 'package:medical_services/presentation/Screens/news/webview.dart';

Widget buildAitims(article, context) => InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(article['url']),
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
