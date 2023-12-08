import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/presentation/Screens/Home/Home.dart';
import 'package:medical_services/presentation/Screens/setting/language/lang.dart';
import 'package:medical_services/presentation/resources/font_manger.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:medical_services/presentation/register/register_doctor/homelayout.dart';
import 'package:medical_services/presentation/resources/values.manger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginAdmin extends StatelessWidget {
  var emailcontrollr = TextEditingController();

  var textcontrollr = TextEditingController();

  var passwordcontrollr = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedicalState>(
        listener: (context, state) {
          if (state is MedicalLoginScussesState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
                (route) => false);
            Fluttertoast.showToast(
                msg: "Welcome Medical +",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blueGrey,
                textColor: Colors.white,
                fontSize: FontSize.s16);
          } else if (state is MedicalLoginErrorState) {
            Fluttertoast.showToast(
                msg: "The Email or password is wrong",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 2,
                backgroundColor: Colors.blueGrey,
                textColor: Colors.white,
                fontSize: FontSize.s16);
          }
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);

          return Scaffold(
              body: SingleChildScrollView(
            child: Stack(
              children: [
                Image(
                  image: const AssetImage('images/login1.jpg'),
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
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p15),
                                      child: Text(
                                        '${getLang(context, 'Welcome My Doctor')}',
                                        style: TextStyle(
                                            fontSize: FontSize.s25,
                                            color: Colors.blue[900]),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        'Email',
                                        style: const TextStyle(
                                            fontSize: FontSize.s15, color: Colors.white),
                                      ),
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
                                      prefix: const Icon(IconBroken.Message),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    )),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: AppPadding.p15),
                                      child: Text(
                                        'Password',
                                        style: const TextStyle(
                                            fontSize: FontSize.s15, color: Colors.white),
                                      ),
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
                                      prefix: const Icon(IconBroken.Lock),
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
                                const SizedBox(
                                  height: AppSize.s30,
                                ),
                                Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue[300],
                                    ),
                                    child: TextButton(
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            cubit.loginUser(email: emailcontrollr.text, password: passwordcontrollr.text);
                                          }
                                        },
                                        child: Text(
                                          '${getLang(context, 'Sign In')}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: FontSize.s20,
                                          ),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.s10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${getLang(context, "Don' t have an account?")}",
                                      style: const TextStyle(color: Colors.white),
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
                                            fontSize: FontSize.s18,
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
