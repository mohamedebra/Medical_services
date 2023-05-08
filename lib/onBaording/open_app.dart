import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:medical_services/onBaording/onboaring.dart';

class OpenApp extends StatelessWidget {
  const OpenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: InkWell(
        onTap: (){
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => OnBaording()), (route) => false);

        },
        child: Center(
          child: SpinKitCubeGrid(
            color: Colors.lightBlueAccent,
            size: 150,
          ),
        ),
      ),
    );
  }
}

//Stack(
//                       children: [
//                         Container(
//                           height: 380,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(50),
//                               bottomRight: Radius.circular(50),
//                             ),
//                             color: Colors.blue[300]
//                           ),
//
//                         ),
//                         Center(
//                           child: Column(
//                             children: [
//                               SizedBox(height: 20,),
//                               Text('Welcome',style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 45
//                               ),),
//                               SizedBox(height: 15,),
//                               Image(image: AssetImage('images/123.png'),
//                                // width: 220,
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),