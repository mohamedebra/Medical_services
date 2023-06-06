import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Login/login_client/login.dart';
import 'package:medical_services/presentation/Login/login_doctor/login_admin.dart';

class Botton_Admin_client extends StatefulWidget {
  @override
  State<Botton_Admin_client> createState() => _Botton_Admin_clientState();
}

class _Botton_Admin_clientState extends State<Botton_Admin_client> {
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
        //mainAxisAlignment: MainAxisAlignment.center,
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
                      width: 250,
                      height: 60,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginAdmin()));
                          },
                          child: Text(
                            _lang.getDOCTOR(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 250,
                      height: 60,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            _lang.getCLIENT(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[200],
                      ),
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
