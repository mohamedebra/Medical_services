import 'package:flutter/material.dart';
import 'package:medical_services/Login/botton_admin_client.dart';
import 'package:medical_services/Login/login_client/login.dart';
import 'package:medical_services/Screens/setting/language/lang.dart';

class Get_Started extends StatelessWidget {
  const Get_Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('images/get.png'),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
            child: Container(
              width: double.infinity,
                color: Colors.blue[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${getLang(context, 'Welcome')}',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,inherit: false),),

                    Text('${getLang(context, 'Your health first')}',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      height: 60,
                      child: TextButton(
                          onPressed: ()
                          {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => Botton_Admin_client()));
                          },
                          child: Text(
                            '${getLang(context, 'Get Started')}',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 24,
                            ),
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,

                      ),
                    ),



                  ],
                )

            )

        )
      ],
    ));
  }
}
