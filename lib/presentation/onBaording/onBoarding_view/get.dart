import 'package:flutter/material.dart';
import 'package:medical_services/presentation/Screens/setting/language/lang.dart';
import 'package:medical_services/presentation/button_admin_client/botton_admin_client.dart';
import 'package:medical_services/presentation/resources/font_manger.dart';
import 'package:medical_services/presentation/resources/values.manger.dart';


class Get_Started extends StatelessWidget {
  const Get_Started({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Expanded(
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
                    Text(
                      '${getLang(context, 'Welcome')}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          inherit: false),
                    ),
                    Text(
                      '${getLang(context, 'Your health first')}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: FontSize.s15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: AppSize.s30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .7,
                      height: AppSize.s60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Button_Admin_client()));
                          },
                          child: Text(
                            '${getLang(context, 'Get Started')}',
                            style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: FontSize.s24,
                            ),
                          )),
                    ),
                  ],
                )))
      ],
    ));
  }
}
