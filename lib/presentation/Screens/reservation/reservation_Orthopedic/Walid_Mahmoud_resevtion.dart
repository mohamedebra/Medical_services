import 'package:flutter/material.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/presentation/Screens/search/card.dart';
import 'package:medical_services/presentation/resources/style.dart';


class Walid_Mahmoud_resevtion extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation information',style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [

                SizedBox(height: 10,),
                Center(child: Text('Reservation',style: TextStyle(fontSize: 17,color: Colors.grey),)),
                Center(child: Text('A Medical',style: TextStyle(fontSize: 14,color: Colors.blue),)),

              ],
            ),
            const SizedBox(height: 7,),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[400],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 7,),
                      Icon(Icons.timer,color: Colors.green,),
                      Text('Timer Waiting ${5}',style: TextStyle(color: Colors.greenAccent[400]),),
                    ],
                  ),
                ),
                Container(
                  width: 1,
                  height: 50,
                  color: Colors.grey[400],
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 7,),
                      Icon(Icons.price_change_outlined,color: Colors.blue,),
                      Text('ج 400  Detection  ',),
                    ],
                  ),
                ),
                SizedBox(height: 7,)
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[400],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Icon(Icons.location_on , color: Colors.blue,),
                    ),
                    Text('6th of October, the central axis, in front of the third district',style: TextStyle(fontSize: 12,color: Colors.grey),),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 20,left: 20),
                  child: Text('Book now and the full address details and clinic number will be sent to you',style: TextStyle(fontSize: 14,color: Colors.grey[900]),),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[400],
            ),
            Column(
              children: [
                Center(
                  child: Text('Book an appointment',style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                )
              ],
            ),
            SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Text('Dr , Walid Mahmoud',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Patient name',
                              style: TextStyle(
                                  fontSize: 17, color: Colors.grey[400]),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: TextFormField(
                                controller: passwordcontrollr,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Please enter your Patient name';
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
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  // suffix: Icon(Icons.remove_red_eye_rounded),
                                  hintText: '*******',
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Mobile number',
                              style: TextStyle(
                                  fontSize: 17, color: Colors.grey[400]),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            child: TextFormField(
                                controller: phonecontrollr,
                                keyboardType: TextInputType.phone,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Please enter your Mobile Number';
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
                                decoration: InputDecoration(
                                  prefixIcon: Icon(IconBroken.Call),
                                  hintText: '+20 Phone',
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                )),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[300],

                          ),
                          child: TextButton(
                              onPressed: ()async
                              {
                                if(formKey.currentState!.validate()){
                                  // Fluttertoast.showToast(
                                  //     msg: "Reservation requested",
                                  //     toastLength: Toast.LENGTH_LONG,
                                  //     gravity: ToastGravity.CENTER,
                                  //     timeInSecForIosWeb: 2,
                                  //     backgroundColor: Colors.blueGrey,
                                  //     textColor: Colors.white,
                                  //     fontSize: 16.0
                                  // );
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Card_Search()));
                                }
                              },
                              child: Center(
                                child: Text(
                                  'Reservation request',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),

                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * .40,
                    //   child: ConditionalBuilder(
                    //       condition: Search.business.length > 0,
                    //       builder: (context) => ListView.separated(
                    //           itemBuilder: (context, index) =>
                    //               buildAitims(Search.business[index], context),
                    //           separatorBuilder: (context, index) => Container(),
                    //           itemCount: Search.business.length),
                    //       fallback: (context) =>
                    //           Center(child: CircularProgressIndicator())),
                    // ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
