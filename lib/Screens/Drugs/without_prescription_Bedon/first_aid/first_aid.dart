import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/Screens/market/market.dart';
import 'package:medical_services/model/lang.dart';
import 'package:medical_services/model/modelLogin.dart';

class First_aid extends StatefulWidget {
  static List  business = [];

  @override
  State<First_aid> createState() => _First_aidState();
}

class _First_aidState extends State<First_aid> {
  var messageContror = TextEditingController();
  Lang _lang = Lang();

  @override
  void initState() {
    getdata();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getfirstaid(),style: TextStyle(fontSize: 20),),
      ),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20,top: 20),
              child: Container(
                height: 50,
                child: TextFormField(
                  onTap: () {
                  },
                  controller: messageContror,
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.search),
                    hintText: '                                                   ${_lang.getAlcoholandsterilizationSearchbycategory()}',

                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]

              ),
              width: 120,
              height: 30,
              child: Center(child: Text(_lang.getProductType())),
            ),
            SizedBox(
              height: 15,),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 15,),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/ab46316c-2e10-40b1-9db8-07185d9d25af.jpg'),width: 120,height: 120,),
                        Text(
                            'ميبو مرهم 15 جم'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '41,50 جنيه'),
                        InkWell(
                          onTap: (){
                            for(var i = 0 ; i >= 100; i++)
                              ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
                            Fluttertoast.showToast(
                                msg: "تم اضافه المنتج",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 2,
                                backgroundColor: Colors.blueGrey,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100]

                            ),
                            width: 120,
                            height: 30,
                            child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),
                Container(height: 255,width: 1,color: Colors.grey[200],),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/بلاستر .jpg'),width: 120,height: 120,),
                        Text(
                            'CURE AID PLASTER -1000 STRIPS'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '0,25  جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]

                          ),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: (){
                                for(var i = 0 ; i >= 100; i++)
                                  ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
                                Fluttertoast.showToast(
                                    msg: "تم اضافه المنتج",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 2,
                                    backgroundColor: Colors.blueGrey,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              },
                              child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
                        ),




                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/فارماكول.jpg'),width: 120,height: 120,),
                        Text(
                            'فارماكول بلاستر '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '27 جنيه'),
                        InkWell(
                          onTap: (){
                            for(var i = 0 ; i >= 100; i++)
                              ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
                            Fluttertoast.showToast(
                                msg: "تم اضافه المنتج",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 2,
                                backgroundColor: Colors.blueGrey,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );

                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100]

                            ),
                            width: 120,
                            height: 30,
                            child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),
                Container(height: 255,width: 1,color: Colors.grey[200],),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/شاش جروح.jpg'),width: 120,height: 120,),
                        Text(
                            'شاش جروح لاصق (9*10 ) BM FOR Dressing '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '7 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]

                          ),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: (){
                                for(var i = 0 ; i >= 100; i++)
                                  ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
                                Fluttertoast.showToast(
                                    msg: "تم اضافه المنتج",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 2,
                                    backgroundColor: Colors.blueGrey,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              },
                              child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
                        ),




                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/Fito Burn.jpg'),width: 120,height: 120,),
                        Text(
                            'Fito Burn cream 32gm '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '95 جنيه'),
                        InkWell(
                          onTap: (){
                            for(var i = 0 ; i >= 100; i++)
                              ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
                            Fluttertoast.showToast(
                                msg: "تم اضافه المنتج",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 2,
                                backgroundColor: Colors.blueGrey,
                                textColor: Colors.white,
                                fontSize: 16.0
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100]

                            ),
                            width: 120,
                            height: 30,
                            child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),
                Container(height: 255,width: 1,color: Colors.grey[200],),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/Plaster.jpg'),width: 120,height: 120,),
                        Text(
                            'بلاستر لازاله الكالو'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '11 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]

                          ),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: (){
                                for(var i = 0 ; i >= 100; i++)
                                  ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
                                Fluttertoast.showToast(
                                    msg: "تم اضافه المنتج",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 2,
                                    backgroundColor: Colors.blueGrey,
                                    textColor: Colors.white,
                                    fontSize: 16.0
                                );
                              },
                              child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
                        ),




                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      )



    );
  }

  void getdata()async{


    var response = await Dio().get('http://192.168.1.12:8000/api/v1/products');
    if(response.statusCode == 200)
    {
      setState(() {
        First_aid.business = response.data['data'] as List;
      });

    }
    else{
      print(response.statusCode);
    }

  }

}





//            Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '12 جنيه'),
//                         InkWell(
//                           onTap: (){},
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.blue[100]
//
//                             ),
//                             width: 120,
//                             height: 30,
//                             child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
//                           ),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(height: 255,width: 1,color: Colors.grey[200],),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '54 جنيه'),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.blue[100]
//
//                           ),
//                           width: 120,
//                           height: 30,
//                           child: InkWell(
//                               onTap: (){},
//                               child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey[300],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '12 جنيه'),
//                         InkWell(
//                           onTap: (){},
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.blue[100]
//
//                             ),
//                             width: 120,
//                             height: 30,
//                             child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
//                           ),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(height: 255,width: 1,color: Colors.grey[200],),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '54 جنيه'),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.blue[100]
//
//                           ),
//                           width: 120,
//                           height: 30,
//                           child: InkWell(
//                               onTap: (){},
//                               child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey[300],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '12 جنيه'),
//                         InkWell(
//                           onTap: (){},
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.blue[100]
//
//                             ),
//                             width: 120,
//                             height: 30,
//                             child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
//                           ),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(height: 255,width: 1,color: Colors.grey[200],),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '54 جنيه'),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.blue[100]
//
//                           ),
//                           width: 120,
//                           height: 30,
//                           child: InkWell(
//                               onTap: (){},
//                               child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: double.infinity,
//               height: 1,
//               color: Colors.grey[300],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '12 جنيه'),
//                         InkWell(
//                           onTap: (){},
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.blue[100]
//
//                             ),
//                             width: 120,
//                             height: 30,
//                             child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
//                           ),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(height: 255,width: 1,color: Colors.grey[200],),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 25),
//                     child: Column(
//                       children: [
//                         Image(
//                           image: AssetImage('images/1(1).jpg'),width: 120,height: 120,),
//                         Text(
//                             'اوكتورنك 25 مجم 20 كبسوله'),
//                         Text(
//                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                         Text(
//                             '54 جنيه'),
//                         Container(
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.blue[100]
//
//                           ),
//                           width: 120,
//                           height: 30,
//                           child: InkWell(
//                               onTap: (){},
//                               child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),))),
//                         ),
//
//
//
//
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),


//ListView.separated(
//                       itemBuilder: (context,index)=> Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//                         child: Padding(
//                           padding: const EdgeInsets.only(bottom: 10,right: 10,left: 10,top: 10),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: [
//
//                                   Container(
//                                 width: 120,
//                                     height: 120,
//                                     child: Image(
//                                       image: NetworkImage('${First_aid.business[index]['image']}'),fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                   SizedBox(width: 30,),
//                                   Expanded(
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Text(
//                                             '${First_aid.business[index]['name']}'),
//                                         Text(
//                                           'عبله',style: TextStyle(color: Colors.grey[300]),),
//                                         Text(
//                                             '${First_aid.business[index]['price']}'),
//                                         InkWell(
//                                           onTap: (){
//                                             // ModelLogin.buyprodact(product_id: First_aid.business[index]['category_id']);
//                                             ModelLogin.getprodact(category_id: First_aid.business[index]['id']);
//                                           },
//                                           child: Container(
//                                             decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(20),
//                                                 color: Colors.blue[100]
//
//                                             ),
//                                             width: 120,
//                                             height: 30,
//                                             child: Center(child: Text('اضافه',style: TextStyle(color: Colors.blue),)),
//                                           ),
//                                         ),
//
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       separatorBuilder: (context,index) => Container(
//                         width: double.infinity,
//                         height: 1,
//                         color: Colors.grey[300],
//                       ),
//                       itemCount: First_aid.business.length)