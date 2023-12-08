import 'package:flutter/material.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/presentation/Login/login_client/login.dart';
import 'package:medical_services/presentation/Login/login_doctor/login_admin.dart';
import 'package:medical_services/presentation/resources/font_manger.dart';
import 'package:medical_services/presentation/resources/values.manger.dart';

class Button_Admin_client extends StatefulWidget {
  @override
  State<Button_Admin_client> createState() => _Button_Admin_clientState();
}

class _Button_Admin_clientState extends State<Button_Admin_client> {
  var controller = TextEditingController();

  Lang _lang = Lang();
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _lang.getLang();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage('images/doctor_client.jpg'),
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .47,
                    ),
                    Container(
                      width: AppSize.s250,
                      height: AppSize.s60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginAdmin()));
                          },
                          child: Text(
                            _lang.getDOCTOR(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: FontSize.s24,
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: AppSize.s50,
                    ),
                    Container(
                      width: AppSize.s250,
                      height: AppSize.s60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            _lang.getCLIENT(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: FontSize.s24,
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
