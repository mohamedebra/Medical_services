import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/domian/model/model.dart';
import 'package:medical_services/presentation/register/register_doctor/next.dart';
import 'package:medical_services/presentation/Screens/Home/Home.dart';
import 'package:medical_services/presentation/resources/style.dart';

class HomeLayOut extends StatefulWidget {
  static var userfirstcontrollr = TextEditingController();

  static var userlastcontrollr = TextEditingController();
  static var emailcontrollr = TextEditingController();

  static var serviescontroller = TextEditingController();

  static var usercontrollr = TextEditingController();

  static var passwordcontrollr = TextEditingController();

  static var phonecontrollr = TextEditingController();
  @override
  State<HomeLayOut> createState() => _HomeLayOutState();
}

class _HomeLayOutState extends State<HomeLayOut> {
  var formKey = GlobalKey<FormState>();

  var controller = ScrollController();

  var scffoldKey = GlobalKey<ScaffoldState>();

  user(Users model, int index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                if (itemsUsers[index].ip >= index) {
                  HomeLayOut.serviescontroller.text = itemsUsers[index].id;
                }
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      '${model.id}',
                      style: TextStyle(fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedicalState>(
        listener: (context, state) {
          if (state is MedicalCreateRegisterSuccessstate) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Home()),
                (route) => false);
          }
        },
        builder: (context, state) {
          SocialModel model = SocialModel();
          var usercontrollr = HomeLayOut.userlastcontrollr.text +
              HomeLayOut.userfirstcontrollr.text;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[300],
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.blue[300],
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                AppCubit.get(context).getImage();
                              },
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.blue[300]),
                                    child: Icon(
                                      IconBroken.Camera,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .20,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                topStart: Radius.circular(50),
                                topEnd: Radius.circular(50),
                              ),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'First name ',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey[400]),
                                  ),
                                ),
                                TextFormField(
                                    controller: HomeLayOut.userfirstcontrollr,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your First name';
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: '*****',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400]),
                                        prefixIcon: Icon(Icons.person),
                                        prefixIconColor: Colors.grey[500])),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Last name ',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey[400]),
                                  ),
                                ),
                                TextFormField(
                                    controller: HomeLayOut.userlastcontrollr,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your Last name';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: '*****',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400]),
                                        prefixIcon: Icon(Icons.person),
                                        prefixIconColor: Colors.grey[500])),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 7, color: Colors.grey[400]),
                                  ),
                                ),
                                TextFormField(
                                    controller: HomeLayOut.serviescontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your Specialty';
                                      }
                                    },
                                    onFieldSubmitted: (value) {},
                                    onChanged: (val) {
                                      showBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 300,
                                              child: ListView.separated(
                                                itemBuilder: (context, index) {
                                                  return user(
                                                      itemsUsers[index], index);
                                                },
                                                itemCount: itemsUsers.length,
                                                separatorBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            );
                                          });

                                      setState(() {
                                        val = HomeLayOut.serviescontroller.text;
                                      });
                                    },
                                    onTap: () {
                                      showBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 300,
                                              child: ListView.separated(
                                                itemBuilder: (context, index) {
                                                  return user(
                                                      itemsUsers[index], index);
                                                },
                                                itemCount: itemsUsers.length,
                                                separatorBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 1,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Specialty',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      prefixIcon: Icon(
                                        Icons.medical_services,
                                        color: Colors.grey[500],
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Mobile number',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey[400]),
                                  ),
                                ),
                                TextFormField(
                                    controller: HomeLayOut.phonecontrollr,
                                    keyboardType: TextInputType.phone,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your Mobile Number';
                                      }
                                    },
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(IconBroken.Call),
                                      hintText: '+20 Phone',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Email Address',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey[400]),
                                  ),
                                ),
                                TextFormField(
                                    controller: HomeLayOut.emailcontrollr,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your email';
                                      }
                                    },
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(IconBroken.Message),
                                      hintText: '*******',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.grey[400]),
                                  ),
                                ),
                                TextFormField(
                                    controller: HomeLayOut.passwordcontrollr,
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                    },
                                    obscureText:
                                        AppCubit.get(context).isPassword,
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock),
                                      // suffix: Icon(Icons.remove_red_eye_rounded),
                                      hintText: '*******',
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          AppCubit.get(context).changeIcon();
                                        },
                                        icon: Icon(AppCubit.get(context).icon),
                                      ),
                                    )),
                                SizedBox(
                                  height: 30,
                                ),
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
                                          onPressed: () {
                                            // if(formKey.currentState!.validate()){
                                            //   AppCubit.get(context).user(
                                            //       name: usercontrollr,
                                            //       email: HomeLayOut.emailcontrollr.text,
                                            //       password: HomeLayOut.passwordcontrollr.text,
                                            //       phone: HomeLayOut.phonecontrollr.text,
                                            //       uId: model.uId.toString()
                                            //   );
                                            //   //   Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                            //
                                            // }
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Next()));
                                          },
                                          child: Center(
                                            child: Text(
                                              'Next',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                              ),
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Users> itemsUsers = [
  Users(
    id: "heart disease	",
    ip: 0,
  ),
  Users(
    id: "bones	",
    ip: 1,
  ),
  Users(
    id: "nose and ear	",
    ip: 2,
  ),
  Users(
    id: "esoteric",
    ip: 3,
  ),
  Users(
    id: "surgery",
    ip: 4,
  ),
  Users(
    id: "leather",
    ip: 5,
  ),
];

class Users {
  String id;
  var ip;

  Users({required this.id, required this.ip});
}
