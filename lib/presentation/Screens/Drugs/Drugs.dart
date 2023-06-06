import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/Drugs/fighting_the_infection/fighting_the_infection.dart';
import 'package:medical_services/presentation/Screens/Drugs/hair_care/hair_care.dart';
import 'package:medical_services/presentation/Screens/Drugs/man_care/man_care.dart';
import 'package:medical_services/presentation/Screens/Drugs/vitamins/vitamins.dart';
import 'package:medical_services/presentation/Screens/Drugs/without_prescription_Bedon/without_prescription_Bedon.dart';
import 'package:medical_services/presentation/Screens/Drugs/woman_care/woman_care.dart';
import 'package:medical_services/presentation/Screens/Home/Home.dart';
import 'package:medical_services/presentation/resources/style.dart';

class Drugs extends StatefulWidget {
  const Drugs({Key? key}) : super(key: key);

  @override
  State<Drugs> createState() => _DrugsState();
}

class _DrugsState extends State<Drugs> {
  Lang _lang = Lang();
  @override
  void initState() {
    getData();
    setState(() {
      _lang.getLang();
    });
    super.initState();
  }
  List data = [];
  void getData()async{
    var response = await Dio().get('http://ugt.517.mywebsitetransfer.com/api/v1/news');
    if(response.statusCode == 200)
    {
      setState(() {
        data = response.data['data'] as List ;
      });
      print(response.data);

    }
    else{
      print(response.statusCode);
    }
  }
  Widget build(BuildContext context) {
    var txetContorlr =TextEditingController();


    return BlocProvider<AppCubit>(
      create: (BuildContext context) => AppCubit(),

      child: BlocConsumer<AppCubit,MedialState>(
        listener: (context,state){},
        builder: (context,state){

          return Scaffold(
            appBar: AppBar(
              backgroundColor:Colors.blue[200],
              leading: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
              }, icon: Icon(Icons.arrow_back_ios
              )),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 235,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35)
                          ),
                          color: Colors.blue[200],

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(_lang.getDrugs1(),style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black),),
                            ),
                            SizedBox(height: 35,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 60,
                                child: TextFormField(
                                  onTap: (){},
                                  controller: txetContorlr,
                                  decoration: InputDecoration(
                                      fillColor: Colors.blue[200],
                                      filled: true,
                                      suffixIcon:Padding(
                                        padding: const EdgeInsets.only(right: 40),
                                        child: Icon(IconBroken.Search,color: Colors.grey[700],),
                                      ),
                                      hintText: _lang.getDrugs2(),
                                      hintStyle: TextStyle(color: Colors.black45,fontSize: 12),
                                      border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20)
                                    )

                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(height: 15,),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 150),
                            //   child: InkWell(
                            //     onTap: (){
                            //       AppCubit.get(context).getImage();
                            //     },
                            //     child: Card(
                            //       color: Colors.white,
                            //
                            //       child: Padding(
                            //         padding: const EdgeInsets.all(5.0),
                            //         child: Column(
                            //           children: [
                            //             Icon(IconBroken.Camera,size: 30,color: Colors.blue,),
                            //             Text('صوره المنتج ',style: TextStyle(fontSize: 15,color: Colors.blue[400],fontWeight: FontWeight.w700))
                            //           ],
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // )


                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(_lang.getSection(),style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Vitamins()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image(image: AssetImage('images/1252.jpg'),width: 70,),
                                    const SizedBox(height: 35,),
                                    Text(_lang.getVitamins(),                                  style: TextStyle(
                                        fontSize: 14,fontWeight: FontWeight.bold
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Without_Prescription()));

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image(image: AssetImage('images/53615.jpg'),width: 90,),
                                    SizedBox(height: 10,),
                                    Text(_lang.getMedications(),                                  style: TextStyle(
                                        fontSize: 15,fontWeight: FontWeight.bold
                                    ))
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Fighting_the_infection()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [

                                    Image(image: AssetImage('images/12345.jpg'),width: 90,),
                                    SizedBox(height: 17,),
                                    Text(_lang.getfighting(),
                                      style: TextStyle(
                                          fontSize: 15,fontWeight: FontWeight.bold
                                      ),)
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Woman_care()));

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image(image: AssetImage('images/300.jpg'),width: 97,),
                                    SizedBox(height: 10,),

                                    Text(_lang.getwomen(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_care()));

                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image(image: AssetImage('images/15150482641.jpg'),width: 95,),
                                    SizedBox(height: 10,),

                                    Text(_lang.gethair(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Man_care()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image(image: AssetImage('images/21492918701.jpg'),width: 113,),
                                    SizedBox(height: 10,),
                                    Text(_lang.getman(),style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )

                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height,
                  //   child:  ListView.separated(
                  //     itemBuilder: (context,index) => Row(
                  //       children: [
                  //         Expanded(
                  //           child: InkWell(
                  //             onTap: (){
                  //               Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_care()));
                  //
                  //             },
                  //             child: Card(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.all(8.0),
                  //                 child: Column(
                  //                   children: [
                  //                     Image(image: NetworkImage('${data[index]['image']}'),width: 95,),
                  //                     SizedBox(height: 10,),
                  //
                  //                     Text('${data[index]['title']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Expanded(
                  //           child: InkWell(
                  //             onTap: (){
                  //               Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_care()));
                  //
                  //             },
                  //             child: Card(
                  //               child: Padding(
                  //                 padding: const EdgeInsets.all(8.0),
                  //                 child: Column(
                  //                   children: [
                  //                     Image(image: NetworkImage('${data[index]['image']}'),width: 95,),
                  //                     SizedBox(height: 10,),
                  //
                  //                     Text('${data[index]['title']}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                  //                   ],
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //
                  //       ],
                  //     ),
                  //     separatorBuilder: (BuildContext context, int index) => Center(
                  //       child: CircularProgressIndicator(),
                  //     ),
                  //     itemCount: data.length,),
                  // )





                ],
              ),
            ),
          );
        },

      ),
    );

  }

}
