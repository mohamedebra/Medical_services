import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/presentation/Screens/Drugs/without_prescription_Bedon/first_aid/first_aid.dart';

class Pain_management extends StatefulWidget {
  @override
  State<Pain_management> createState() => _Pain_managementState();
}

class _Pain_managementState extends State<Pain_management> {
  Lang _lang = Lang();
  bool inLoading = true;
  List business = [];
  List data = [];
  var messageContror = TextEditingController();
  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getPaintreatments(),
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                height: 50,
                child: TextFormField(
                  onTap: () {},
                  controller: messageContror,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: Icon(Icons.search),
                    hintText:
                        '                                                   ${_lang.getAlcoholandsterilizationSearchbycategory()}',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              width: 120,
              height: 30,
              child: Center(child: Text(_lang.getProductType())),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            SingleChildScrollView(
              child: ConditionalBuilder(
                condition: business.length > 0,
                builder: (BuildContext context) => Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      NetworkImage('${business[6]['image']}'),
                                  width: 120,
                                  height: 120,
                                ),
                                Text('${business[6]['name']}'),
                                Text(
                                  'عبله',
                                  style: TextStyle(color: Colors.grey[300]),
                                ),
                                Text('${business[6]['price']} جنيه'),
                                InkWell(
                                  onTap: () async{

                                    Fluttertoast.showToast(
                                        msg: "تم اضافه المنتج",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 2,
                                        backgroundColor: Colors.blueGrey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue[100]),
                                    width: 120,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'اضافه',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 255,
                          width: 1,
                          color: Colors.grey[200],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      NetworkImage('${business[2]['image']}'),
                                  width: 120,
                                  height: 120,
                                ),
                                Text('${business[2]['name']}'),
                                Text(
                                  'عبله',
                                  style: TextStyle(color: Colors.grey[300]),
                                ),
                                Text('${business[2]['price']}123 جنيه'),
                                InkWell(
                                  onTap: ()async {
                                    Fluttertoast.showToast(
                                        msg: "تم اضافه المنتج",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 2,
                                        backgroundColor: Colors.blueGrey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue[100]),
                                    width: 120,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'اضافه',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                  ),
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
                                  image:
                                      NetworkImage('${business[0]['image']}'),
                                  width: 120,
                                  height: 120,
                                ),
                                Text('${business[0]['name']}'),
                                Text(
                                  'عبله',
                                  style: TextStyle(color: Colors.grey[300]),
                                ),
                                Text('${business[0]['price']}  fgttgجنيه'),
                                InkWell(
                                  onTap: () {
                                    for (var i = 0; i >= 100; i++)
                                      ModelLogin.buyprodact(
                                          product_id: First_aid.business[i]['id']);
                                    Fluttertoast.showToast(
                                        msg: "تم اضافه المنتج",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 2,
                                        backgroundColor: Colors.blueGrey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue[100]),
                                    width: 120,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'اضافه',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 255,
                          width: 1,
                          color: Colors.grey[200],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      NetworkImage('${business[3]['image']}'),
                                  width: 120,
                                  height: 120,
                                ),
                                Text('${business[3]['name']}'),
                                Text(
                                  'عبله',
                                  style: TextStyle(color: Colors.grey[300]),
                                ),
                                Text('${business[3]['price']} جنيه'),
                                InkWell(
                                  onTap: () {
                                    for (var i = 0; i >= 100; i++)
                                      ModelLogin.buyprodact(
                                          product_id: First_aid.business[i]['id']);
                                    Fluttertoast.showToast(
                                        msg: "تم اضافه المنتج",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 2,
                                        backgroundColor: Colors.blueGrey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue[100]),
                                    width: 120,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'اضافه',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                  ),
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
                                  image:
                                      NetworkImage('${business[4]['image']}'),
                                  width: 120,
                                  height: 120,
                                ),
                                Text('${business[4]['name']}'),
                                Text(
                                  'عبله',
                                  style: TextStyle(color: Colors.grey[300]),
                                ),
                                Text('${business[4]['price']} جنيه'),
                                InkWell(
                                  onTap: () {
                                    for (var i = 0; i >= 100; i++)
                                      ModelLogin.buyprodact(
                                          product_id: First_aid.business[i]['id']);
                                    Fluttertoast.showToast(
                                        msg: "تم اضافه المنتج",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.CENTER,
                                        timeInSecForIosWeb: 2,
                                        backgroundColor: Colors.blueGrey,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue[100]),
                                    width: 120,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'اضافه',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 255,
                          width: 1,
                          color: Colors.grey[200],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25),
                            child: Column(
                              children: [
                                Image(
                                  image:
                                      NetworkImage('${business[5]['image']}'),
                                  width: 120,
                                  height: 120,
                                ),
                                Text('${business[5]['name']}'),
                                Text(
                                  'عبله',
                                  style: TextStyle(color: Colors.grey[300]),
                                ),
                                Text('${business[5]['price']} جنيه'),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue[100]),
                                    width: 120,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      'اضافه',
                                      style: TextStyle(color: Colors.blue),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                fallback: (BuildContext context) => Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void getdata() async {
    var response = await Dio().get('https://rowadtest.infosaseg.com/api/v1/products');
    if (response.statusCode == 200) {
      setState(() {
        business = response.data['data'] as List;
      });
    } else {
    }
  }
}
