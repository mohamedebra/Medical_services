import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:medical_services/presentation/onBaording/onBoarding_view/onboaring.dart';
import 'package:shimmer/shimmer.dart';

class OpenApp extends StatefulWidget {
  const OpenApp({Key? key}) : super(key: key);

  @override
  State<OpenApp> createState() => _OpenAppState();
}

class _OpenAppState extends State<OpenApp> {
  Timer? _timer;

  _startDelay(){
    _timer = Timer( const Duration(seconds: 3), _goNext);
  }

  _goNext(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> OnBaording()));
  }
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'images/download.png',
            fit: BoxFit.none,
          ),
          Positioned(
            top: 20.0,
            right: 0.0,
            left: 0.0,
            child: Shimmer.fromColors(
              baseColor: Colors.blue,
              highlightColor: Colors.white,
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * .2,),
                    Text(
                      'Medical +',
                      style: const TextStyle(
                        fontSize: 60.0,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

