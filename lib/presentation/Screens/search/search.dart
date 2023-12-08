import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/presentation/Screens/Home/Home.dart';
import 'package:medical_services/presentation/Screens/news/build.dart';
import 'package:medical_services/business_logic/states.dart';

class Search extends StatefulWidget {
  static List business = [];
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Lang _lang = Lang();
  var messageContror = TextEditingController();
  var emailcontrollr = TextEditingController();

  var serviescontroller = TextEditingController();

  var usercontrollr = TextEditingController();

  var passwordcontrollr = TextEditingController();

  var userfirstcontrollr = TextEditingController();

  var userlastcontrollr = TextEditingController();

  var phonecontrollr = TextEditingController();

  var formKey = GlobalKey<FormState>();

  user(Users model, int index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                if (itemsUsers[index].ip >= index) {
                  userlastcontrollr.text = itemsUsers[index].id;
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
  plase(Place model, int index) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                if (itemsemailcontrollr[index].ip >= index) {
                  emailcontrollr.text = itemsemailcontrollr[index].id;
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
  void initState() {
    getsearch();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (route) => false);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: const Text('information'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (BuildContext context) => AppCubit(),
        child: BlocConsumer<AppCubit, MedicalState>(
          listener: (context, state) {},
          builder: (context, state) {
            return SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: 70,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 20),
                    //         child: Text(
                    //           'Patient name',
                    //           style: TextStyle(
                    //               fontSize: 17, color: Colors.grey[400]),
                    //         ),
                    //       ),
                    //       TextFormField(
                    //           controller: passwordcontrollr,
                    //           keyboardType: TextInputType.visiblePassword,
                    //           validator: (val) {
                    //             if (val!.isEmpty) {
                    //               return 'Please enter your Patient name';
                    //             }
                    //           },
                    //           onFieldSubmitted: (value) {
                    //             // if(formKey.currentState!.validate()){
                    //             //   Logincubit.get(context)(
                    //             //       email: emailcontrollr.text,
                    //             //       password: passwordcontrollr.text
                    //             //   );
                    //             // }
                    //           },
                    //           decoration: InputDecoration(
                    //             prefixIcon: Icon(Icons.person),
                    //             // suffix: Icon(Icons.remove_red_eye_rounded),
                    //             hintText: '*******',
                    //             hintStyle: TextStyle(color: Colors.grey[400]),
                    //             border: OutlineInputBorder(
                    //                 borderRadius: BorderRadius.circular(20)),
                    //           )),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 20),
                    //         child: Text(
                    //           'Choose a specialty',
                    //           style: TextStyle(
                    //               fontSize: 17, color: Colors.grey[400]),
                    //         ),
                    //       ),
                    //       TextFormField(
                    //           onChanged: (val){
                    //             showBottomSheet(context: context, builder: (BuildContext context) {
                    //               return  Container(
                    //                 height: 300,
                    //                 child: ListView.separated(
                    //                   itemBuilder:  (context,index) {
                    //                     return user(itemsUsers[index],index);
                    //                   },
                    //                   itemCount: itemsUsers.length,
                    //                   separatorBuilder: (BuildContext context, int index)=> Padding(
                    //                     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //                     child: Container(
                    //                       width: double.infinity,
                    //                       height: 1,
                    //                       color: Colors.grey,
                    //
                    //                     ),
                    //                   ),
                    //                 ),
                    //               );
                    //             });
                    //
                    //             setState(() {
                    //               val = userlastcontrollr.text;
                    //             });
                    //           },
                    //           onTap: (){
                    //             showBottomSheet(context: context, builder: (BuildContext context) {
                    //               return  Container(
                    //                 color: Colors.grey[200],
                    //                 height: 300,
                    //                 child: ListView.separated(
                    //                   itemBuilder:  (context,index) {
                    //                     return user(itemsUsers[index],index);
                    //                   },
                    //                   itemCount: itemsUsers.length,
                    //                   separatorBuilder: (BuildContext context, int index)=> Padding(
                    //                     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //                     child: Container(
                    //                       width: double.infinity,
                    //                       height: 1,
                    //                       color: Colors.grey,
                    //
                    //                     ),
                    //                   ),
                    //                 ),
                    //               );
                    //             });
                    //
                    //           },
                    //           controller: userlastcontrollr,
                    //           keyboardType: TextInputType.emailAddress,
                    //           validator: (val) {
                    //             if (val!.isEmpty) {
                    //               return 'Please enter your specialty';
                    //             }
                    //             return null;
                    //           },
                    //           decoration: InputDecoration(
                    //               hintText: '*****',
                    //               hintStyle: TextStyle(color: Colors.grey[400]),
                    //               prefixIcon: Icon(Icons.person),
                    //               prefixIconColor: Colors.grey[500],
                    //               border: OutlineInputBorder(
                    //                   borderRadius: BorderRadius.circular(20)))),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 20),
                    //         child: Text(
                    //           'Mobile number',
                    //           style: TextStyle(
                    //               fontSize: 17, color: Colors.grey[400]),
                    //         ),
                    //       ),
                    //       TextFormField(
                    //           controller: phonecontrollr,
                    //           keyboardType: TextInputType.phone,
                    //           validator: (val) {
                    //             if (val!.isEmpty) {
                    //               return 'Please enter your Mobile Number';
                    //             }
                    //           },
                    //           onFieldSubmitted: (value) {
                    //             // if(formKey.currentState!.validate()){
                    //             //   Logincubit.get(context)(
                    //             //       email: emailcontrollr.text,
                    //             //       password: passwordcontrollr.text
                    //             //   );
                    //             // }
                    //           },
                    //           decoration: InputDecoration(
                    //             prefixIcon: Icon(IconBroken.Call),
                    //             hintText: '+20 Phone',
                    //             hintStyle: TextStyle(color: Colors.grey[400]),
                    //             border: OutlineInputBorder(
                    //                 borderRadius: BorderRadius.circular(20)),
                    //           )),
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 20),
                    //         child: Text(
                    //           'Place',
                    //           style: TextStyle(
                    //               fontSize: 17, color: Colors.grey[400]),
                    //         ),
                    //       ),
                    //       TextFormField(
                    //         onTap: (){
                    //           showBottomSheet(context: context, builder: (BuildContext context) {
                    //             return  Container(
                    //               color: Colors.grey[300],
                    //               height: 300,
                    //               child: ListView.separated(
                    //                 itemBuilder:  (context,index) {
                    //                   return plase(itemsemailcontrollr[index],index);
                    //                 },
                    //                 itemCount: itemsemailcontrollr.length,
                    //                 separatorBuilder: (BuildContext context, int index)=> Padding(
                    //                   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //                   child: Container(
                    //                     width: double.infinity,
                    //                     height: 1,
                    //                     color: Colors.grey,
                    //
                    //                   ),
                    //                 ),
                    //               ),
                    //             );
                    //           });
                    //
                    //         },
                    //           onChanged: (value){
                    //             showBottomSheet(context: context, builder: (BuildContext context) {
                    //               return  Container(
                    //                 height: 300,
                    //                 child: ListView.separated(
                    //                   itemBuilder:  (context,index) {
                    //                     return plase(itemsemailcontrollr[index],index);
                    //                   },
                    //                   itemCount: itemsemailcontrollr.length,
                    //                   separatorBuilder: (BuildContext context, int index)=> Padding(
                    //                     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //                     child: Container(
                    //                       width: double.infinity,
                    //                       height: 1,
                    //                       color: Colors.grey,
                    //
                    //                     ),
                    //                   ),
                    //                 ),
                    //               );
                    //             });
                    //
                    //             setState(() {
                    //               value = emailcontrollr.text;
                    //             });
                    //           },
                    //           controller: emailcontrollr,
                    //           keyboardType: TextInputType.emailAddress,
                    //           validator: (val) {
                    //             if (val!.isEmpty) {
                    //               return 'Please enter your Place';
                    //             }
                    //           },
                    //           onFieldSubmitted: (value) {
                    //             // if(formKey.currentState!.validate()){
                    //             //   Logincubit.get(context)(
                    //             //       email: emailcontrollr.text,
                    //             //       password: passwordcontrollr.text
                    //             //   );
                    //             // }
                    //           },
                    //           decoration: InputDecoration(
                    //             prefixIcon: Icon(Icons.location_on),
                    //             hintText: '*******',
                    //             hintStyle: TextStyle(color: Colors.grey[400]),
                    //             border: OutlineInputBorder(
                    //                 borderRadius: BorderRadius.circular(20)),
                    //
                    //           )),
                    //
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 30,
                    // ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Container(
                    //       width: 270,
                    //       height: 55,
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10),
                    //         color: Colors.blue[300],
                    //
                    //       ),
                    //       child: TextButton(
                    //           onPressed: ()async
                    //           {
                    //             if(formKey.currentState!.validate()){
                    //               // Fluttertoast.showToast(
                    //               //     msg: "Reservation requested",
                    //               //     toastLength: Toast.LENGTH_LONG,
                    //               //     gravity: ToastGravity.CENTER,
                    //               //     timeInSecForIosWeb: 2,
                    //               //     backgroundColor: Colors.blueGrey,
                    //               //     textColor: Colors.white,
                    //               //     fontSize: 16.0
                    //               // );
                    //               Navigator.push(context, MaterialPageRoute(builder: (context) => Card_Search()));
                    //             }
                    //           },
                    //           child: Center(
                    //             child: Text(
                    //               'Reservation request',
                    //               style: TextStyle(
                    //                 color: Colors.white,
                    //                 fontSize: 24,
                    //               ),
                    //             ),
                    //           )),
                    //     ),
                    //   ],
                    // ),
                    // input
                    // Container(
                    //   height: 85,
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(15.0),
                    //     child: TextFormField(
                    //       controller: usercontrollr,
                    //       decoration: InputDecoration(
                    //           hintText: "Please enter text",
                    //           hintStyle: TextStyle(color: Colors.grey[400]),
                    //           border: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(20))),
                    //       onChanged: (String val) {
                    //         getsearch(val);
                    //       },
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height ,
                      child: ConditionalBuilder(
                          condition: Search.business.length > 0,
                          builder: (context) => ListView.separated(
                              itemBuilder: (context, index) =>
                                  buildAitims(Search.business[index], context),
                              separatorBuilder: (context, index) => Container(),
                              itemCount: Search.business.length),
                          fallback: (context) => Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Center(child: LinearProgressIndicator()),
                              )),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<dynamic> search = [];
  List<dynamic> error = [];
  void getsearch() async {
    search = [];

    var response = await Dio().get('https://newsapi.org/v2/top-headlines?country=eg&category=health&apiKey=c9e2a047a41c43cca0ca5f777a0a82dc'
    );
    if (response.statusCode == 200) {
      setState(() {
        Search.business = response.data['articles'] as List;
      });
    } else if (response.statusCode == 426) {
      setState(() {
        error = response.data['message'] as List;
      });
    }
  }

  Widget articleBulider(search, context) => ConditionalBuilder(
      condition: search.length > 0,
      builder: (context) => ListView.separated(
          itemBuilder: (context, index) => buildAitims(search[index], context),
          separatorBuilder: (context, index) => Container(),
          itemCount: 11),
      fallback: (context) => Center(child: CircularProgressIndicator()));

  //                  Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: Card(
//                       elevation: 30,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Stack(
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Expanded(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.all(6.0),
//                                         child: Row(
//                                           children: [
//                                             Stack(
//                                               children: [
//                                                 Image(
//                                                   image: AssetImage(
//                                                       'images/doctor.png'),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               ],
//                                               alignment: Alignment.bottomRight,
//                                             ),
//                                             SizedBox(
//                                               width: 25,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Text(
//                                                   'Dr ,  Mohamed Ebrahim',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 18,
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 7,
//                                                 ),
//                                                 Text(
//                                                   '${getLang(context, 'Cardiologist')}',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.grey),
//                                                 )
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 IconButton(
//                                     onPressed: () {
//                                       AppCubit.get(context)
//                                           .changeIconfavorite();
//                                     },
//                                     icon: Icon(
//                                       AppCubit.get(context).iconData,
//                                       size: 17,
//                                       color: Colors.red[400],
//                                     ))
//
//                                 //IconButton(onPressed: (){
//                                 //                                       AppCubit.get(context).changeIcon();
//                                 //                                     },icon: Icon(AppCubit.get(context).icon),),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: Card(
//                       elevation: 30,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Stack(
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Expanded(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.all(6.0),
//                                         child: Row(
//                                           children: [
//                                             Stack(
//                                               children: [
//                                                 Image(
//                                                   image: AssetImage(
//                                                       'images/doctor2.png'),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               ],
//                                               alignment: Alignment.bottomRight,
//                                             ),
//                                             SizedBox(
//                                               width: 25,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Text(
//                                                   'Dr ,  Wafaa Abu Talib',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 18,
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 7,
//                                                 ),
//                                                 Text(
//                                                   '${getLang(context, 'Gastroenterologist doctor')}',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.grey),
//                                                 )
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 IconButton(
//                                     onPressed: () {
//                                       AppCubit.get(context)
//                                           .changeIconfavorite1();
//                                     },
//                                     icon: Icon(
//                                       AppCubit.get(context).iconData1,
//                                       size: 17,
//                                       color: Colors.red[400],
//                                     ))
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 15),
//                     child: Card(
//                       elevation: 30,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Stack(
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Expanded(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.all(6.0),
//                                         child: Row(
//                                           children: [
//                                             Stack(
//                                               children: [
//                                                 Image(
//                                                   image: AssetImage(
//                                                       'images/doctor3.png'),
//                                                   width: 70,
//                                                   height: 70,
//                                                 ),
//                                               ],
//                                               alignment: Alignment.bottomRight,
//                                             ),
//                                             SizedBox(
//                                               width: 25,
//                                             ),
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               children: [
//                                                 Text(
//                                                   'Dr ,  Hossam Mohamed',
//                                                   style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 18,
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   height: 7,
//                                                 ),
//                                                 Text(
//                                                   '${getLang(context, 'Ophthalmologist')}',
//                                                   style: TextStyle(
//                                                       fontSize: 15,
//                                                       color: Colors.grey),
//                                                 )
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 IconButton(
//                                     onPressed: () {
//                                       AppCubit.get(context)
//                                           .changeIconfavorite2();
//                                     },
//                                     icon: Icon(
//                                       AppCubit.get(context).iconData2,
//                                       size: 17,
//                                       color: Colors.red[400],
//                                     ))
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
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

List<Place> itemsemailcontrollr = [
  Place(
    id: "Dakahlia Governorate",
    ip: 0,
  ),
  Place(
    id: "Gharbiya Governorate",
    ip: 1,
  ),
  Place(
    id: "Red Sea Governorate",
    ip: 2,
  ),
  Place(
    id: "Cairo Governorate",
    ip: 3,
  ),
  Place(
    id: "Giza",
    ip: 4,
  ),
];

class Place {
  String id;
  var ip;

  Place({required this.id, required this.ip});
}
