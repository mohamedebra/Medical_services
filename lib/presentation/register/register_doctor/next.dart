import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/domian/model/model_firebase.dart';
import 'package:medical_services/presentation/Screens/Home/Home.dart';
import 'package:medical_services/presentation/Screens/search/search.dart';

import 'homelayout.dart';

class Next extends StatefulWidget {
  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  var fromtime = TextEditingController();

  var totime = TextEditingController();

  var abstract = TextEditingController();

  var formKey = GlobalKey<FormState>();

  List business = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
      ),
      body: BlocProvider<AppCubit>(
        create: (context) => AppCubit(),
        child: BlocConsumer<AppCubit, MedialState>(
          listener: (context, state) {
            if (state is MedicalRegesterScussesState) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (route) => false);
              Fluttertoast.showToast(
                  msg: "Welcome Medical +",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.blueGrey,
                  textColor: Colors.white,
                  fontSize: 16.0);
            } else if (state is MedicalRegesterErrorState) {
              Fluttertoast.showToast(
                  msg: "The Email or password is wrong",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 2,
                  backgroundColor: Colors.blueGrey,
                  textColor: Colors.white,
                  fontSize: 16.0);
            }
          },
          builder: (context, state) {
            var usercontrollr = HomeLayOut.userfirstcontrollr.text +
                HomeLayOut.userlastcontrollr.text;
            SocialModel model = SocialModel();

            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 50),
                        child: Text(
                          'Times of work',
                          style:
                              TextStyle(fontSize: 23, color: Colors.grey[800]),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: fromtime,
                      keyboardType: TextInputType.datetime,
                      onTap: () {
                        showTimePicker(
                                context: context, initialTime: TimeOfDay.now())
                            .then((value) {
                          fromtime.text = value!.format(context).toString();
                          print(value.format(context).toString());
                        });
                      },
                      onChanged: (value) {},
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Time don't must in Empty";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "From time",
                        prefix: Icon(Icons.access_time),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      controller: totime,
                      keyboardType: TextInputType.datetime,
                      onTap: () {
                        showTimePicker(
                                context: context, initialTime: TimeOfDay.now())
                            .then((value) {
                          totime.text = value!.format(context).toString();
                          print(value.format(context).toString());
                        });
                      },
                      onChanged: (value) {},
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Time don't must in Empty";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "To time",
                        prefix: Icon(Icons.access_time),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 50),
                        child: Text(
                          'Abstract',
                          style:
                              TextStyle(fontSize: 23, color: Colors.grey[800]),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 240,
                        width: MediaQuery.of(context).size.width * .99,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey),
                        child: Container(
                          height: 230,
                          width: MediaQuery.of(context).size.width * .90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[100]),
                          child: TextFormField(
                            controller: abstract,
                            keyboardType: TextInputType.visiblePassword,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please enter your Abstract';
                              }
                            },
                            onFieldSubmitted: (value) {
                              // if(formKey.currentState!.validate()){
                              //   Logincubit.get(context)(
                              //       email: emailcontrollr.text,
                              //       password: passwordcontrollr.text
                              //   );
                              // }
                            },
                            onTap: () {},
                            decoration: InputDecoration(
                              isCollapsed: true,
                              hintText: 'Abstract ......',
                              hintStyle: TextStyle(color: Colors.grey[400]),
                            ),
                          ),
                        ),
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 270,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue[300],
                        ),
                        child: TextButton(
                            onPressed: () async {
                              // if(formKey.currentState!.validate()){
                              //   // AppCubit.get(context).user(
                              //   //     name: usercontrollr,
                              //   //     email: HomeLayOut.emailcontrollr.text,
                              //   //     password: HomeLayOut.passwordcontrollr.text,
                              //   //     phone: HomeLayOut.phonecontrollr.text,
                              //   //     uId: model.uId.toString()
                              //   // );
                              //   //
                              //
                              //
                              //   //   Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                              //
                              //
                              //
                              //
                              // }
                              // ModelLogin.registaruser(
                              //     email: HomeLayOut.emailcontrollr.text,
                              //     password: HomeLayOut.passwordcontrollr.text,
                              //     phone: HomeLayOut.phonecontrollr.text,
                              //     name: HomeLayOut.userfirstcontrollr.text,
                              //     type: "doctor"
                              // );
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  Home()), (route) => false);
                              // FireModel? response = await  ModelLogin.registaruser(
                              //     email: HomeLayOut.emailcontrollr.text,
                              //     password: HomeLayOut.passwordcontrollr.text,
                              //     phone: HomeLayOut.phonecontrollr.text,
                              //     name: HomeLayOut.userfirstcontrollr.text,
                              //     type : "doctor"
                              //
                              // );
                              // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  Home()), (route) => false);
                              AppCubit.get(context).registaruser(
                                  email: HomeLayOut.emailcontrollr.text,
                                  password: HomeLayOut.passwordcontrollr.text,
                                  phone: HomeLayOut.phonecontrollr.text,
                                  name: HomeLayOut.userfirstcontrollr.text,
                                  type: 'doctot');
                            },
                            child: Center(
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void getdata() async {
    var response = await Dio().get(
        'https://schema.postman.com/json/collection/v2.0.0/collection.json');
    if (response.statusCode == 200) {
      setState(() {
        business = response.data['definitions'] as List;
      });
    } else {
      print(response.statusCode);
    }
  }
}
