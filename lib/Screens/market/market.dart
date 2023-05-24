import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/Screens/Drugs/without_prescription_Bedon/first_aid/first_aid.dart';
import 'package:medical_services/Screens/market/cart.dart';
import 'package:medical_services/Screens/setting/language/lang.dart';
import 'package:medical_services/model/lang.dart';
import 'package:medical_services/model/modelLogin.dart';
import 'package:medical_services/model/model_firebase.dart';

class Market extends StatefulWidget {
  Market({
    required prodact_id,
  });

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  List business = [];
  Lang _lang = Lang();
  @override
  void initState() {
    getdata();
    // getprodact();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getshoppingbasket(),
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 100,),
              // Image(image: AssetImage('images/5555 (1).png'),
              // width: 450,
              // height: 450,),
              SizedBox(
                height: MediaQuery.of(context).size.height * .62,
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // Container(
                                  //   width: 90,
                                  //   height: 80,
                                  //   child: Image(
                                  //     image: NetworkImage(
                                  //         '${business[index]['image']}'),
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image(
                                          image: AssetImage('images/بيستر.jpg'),width: 80,height: 90,),
                                        Text(
                                            'بيستر يليانت مطهر طبي وجراحي'),
                                        Text(
                                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                                        Text(
                                            '120 جنيه'),
                                        Container(
                                          height: 1,
                                          width: double.infinity,
                                          color: Colors.grey[300],
                                        ),
                                        Image(
                                          image: AssetImage('images/ايفوني.jpg'),width: 80,height: 100,),
                                        Text(
                                            'ايفوني ماسك'),
                                        Text(
                                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                                        Text(
                                            '90 جنيه'),
                                        Container(
                                          height: 1,
                                          width: double.infinity,
                                          color: Colors.grey[300],
                                        ),
                                        Image(
                                          image: AssetImage('images/Pure .jpg'),width: 90,height: 100,),
                                        Text(
                                            'Pure Aloohol ethyl Alcohol'),
                                        Text(
                                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                                        Text(
                                            '20 جنيه'),
                                        Container(
                                          height: 1,
                                          width: double.infinity,
                                          color: Colors.grey[300],
                                        ),
                                        Image(
                                          image: AssetImage('images/هيد اند شولدرز .jpg'),width: 90,height: 100,),
                                        Text(
                                            'يد اند شولدرز منتول فريش ضد القشره'),
                                        Text(
                                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                                        Text(
                                            '55 جنيه'),



                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 10,
                                width: 1,
                                color: Colors.grey[200],
                              ),
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey[300],
                        ),
                    itemCount: 1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * .80,
                      color: Colors.grey[400],
                    )
                  ],
                ),
              ),
              Text(
                '${getLang(context, 'Total')}  0.00',
                style: TextStyle(fontSize: 20, color: Colors.blue[900]),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // for(var i = 0 ; i >= 100; i++)
                  // ModelLogin.buyprodact(product_id: First_aid.business[i]['product_id']);
                  // Fluttertoast.showToast(
                  //     msg: "user buy product successfully",
                  //     toastLength: Toast.LENGTH_LONG,
                  //     gravity: ToastGravity.CENTER,
                  //     timeInSecForIosWeb: 2,
                  //     backgroundColor: Colors.blueGrey,
                  //     textColor: Colors.white,
                  //     fontSize: 16.0
                  // );
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[400],
                  ),
                  child: Center(
                    child: Text(
                      'Add Card',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void getdata()async{

    var response = await Dio().get('http://ugt.517.mywebsitetransfer.com/api/v1/user-products');
    if(response.statusCode == 200)
    {
      // for(int i = 0; i >=100; i++ ) {
      //   print('${response.data[i]["product_id"]} ===222===');
      // }

      setState(() {
        for(var i = 0 ; i >= 100; i++) {
          var id = ModelLogin.buyprodact(product_id: First_aid.business[i]['id']);
          print("$id ......");
        }
        for(int i = 0; i >= 100; i++ )
          business = response.data[First_aid.business[i]['id']]['data'] ;



      });
      // print(response.data);
      var id = ModelLogin.buyprodact(product_id: First_aid.business[4]['id']);
      print("$id ......");
      print(business);
      print('${response.statusCode}=======' );

    }
    else{
      print('${response.statusCode} error====');
    }

  }
  // getprodact() async {
  //   const url = "http://ugt.517.mywebsitetransfer.com/api/v1/user-products";
  //
  //   final data = {"category_id": 1};
  //   final dio = Dio();
  //   Response response;
  //   response = await dio.get(url);
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       business = response.data[1]['data'] as List;
  //     });
  //     return null;
  //   } else {
  //     return print(response.statusCode);
  //   }
  // }

}
