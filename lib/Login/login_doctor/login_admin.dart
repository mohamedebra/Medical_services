import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/Login/login_doctor/homelayout.dart';
import 'package:medical_services/Screens/Home/Home.dart';
import 'package:medical_services/Screens/setting/language/lang.dart';
import 'package:medical_services/cubit/cubit.dart';
import 'package:medical_services/cubit/states.dart';
import 'package:medical_services/model/chacheHelper.dart';
import 'package:medical_services/model/model.dart';
import 'package:medical_services/model/modelLogin.dart';
import 'package:medical_services/model/model_firebase.dart';
import 'package:medical_services/style/style.dart';

class LoginAdmin extends StatelessWidget {
  var emailcontrollr = TextEditingController();

  var textcontrollr = TextEditingController();

  var passwordcontrollr = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedialState>(
        listener: (context, state) {
          if (state is MedicalLoginScussesState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                    (route) => false);
          }

          if (state is MedicalLoginScussesState) {
            AppCubit.get(context)
                .saveData(key: 'uId', value: state.uId)
                .then((value) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            });
          }
        },
        builder: (context, state) {
          return Scaffold(
              body: SingleChildScrollView(
                child: Stack(
                  children: [

                    Image(
                      image: AssetImage('images/login1.jpg'),
                      fit: BoxFit.cover,
                      height: MediaQuery.of(context).size.height,
                    ),

                    Form(
                      key: formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(height:MediaQuery.of(context).size.height*.20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15),
                                          child: Text('${getLang(context, 'Welcome My Doctor')}',style: TextStyle(fontSize: 25,color: Colors.blue[900]),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*.20),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15),
                                          child: Text('${getLang(context, 'Emaill')}',style: TextStyle(fontSize: 15,color: Colors.white),),
                                        ),
                                      ],
                                    ),
                                    TextFormField(

                                        controller: emailcontrollr,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter your email address';
                                          }
                                        },
                                        decoration: InputDecoration(
                                          fillColor: Colors.white30,
                                          filled: true,
                                          prefix: Icon(IconBroken.Message),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(20)),
                                        )),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15),
                                          child: Text('${getLang(context, 'Password')}',style: TextStyle(fontSize: 15,color: Colors.white),),
                                        ),
                                      ],
                                    ),
                                    TextFormField(
                                        controller: passwordcontrollr,
                                        keyboardType: TextInputType.visiblePassword,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Please enter your password';
                                          }
                                        },
                                        obscureText:
                                        AppCubit.get(context).isPassword,
                                        decoration: InputDecoration(
                                          fillColor: Colors.white30,
                                          filled: true,
                                          prefix: Icon(IconBroken.Lock),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              AppCubit.get(context).changeIcon();
                                            },
                                            icon: Icon(AppCubit.get(context).icon),
                                          ),

                                          border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(20)),
                                        )),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Center(
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 60,
                                        child: TextButton(
                                            onPressed: ()async {
                                              if (formKey.currentState!.validate()) {
                                                FireModel? response = await ModelLogin.loginuser(email: emailcontrollr.text , password: passwordcontrollr.text);
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

                                              } else {
                                                print('please email');
                                              }

                                            },
                                            child: Text(
                                              '${getLang(context, 'Sign In')}',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            )),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue[300],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${getLang(context, "Don' t have an account?")}",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeLayOut()));
                                            },
                                            child: Text(
                                              "${getLang(context, "Register")}",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.blue[900],
                                              ),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}

//Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Center(
//                 child: SingleChildScrollView(
//                   child: Form(
//                     key: formKey,
//                     child:),
//                 ),
//               ),
//             ),