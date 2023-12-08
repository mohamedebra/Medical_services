import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:medical_services/lang/lang.dart';
import 'package:medical_services/domian/model/modelLogin.dart';
import 'package:medical_services/presentation/Screens/Drugs/without_prescription_Bedon/first_aid/first_aid.dart';
import 'package:medical_services/presentation/Screens/market/cart.dart';
import 'package:medical_services/presentation/Screens/setting/language/lang.dart';

class Market extends StatefulWidget {
  Market({
    required prodact_id,
  });

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  List data = [];
  bool inLoading = false;

  Lang _lang = Lang();
  @override
  void initState() {
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
      body: inLoading == true ? const Center(
        child: CircularProgressIndicator(),
      ): SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height * .62,
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'images/ab46316c-2e10-40b1-9db8-07185d9d25af.jpg'),
                                      width: 120,
                                      height: 120,
                                    ),
                                    Text('ميبو مرهم 15 جم'),
                                    Text(
                                      'عبله',
                                      style: TextStyle(color: Colors.grey[300]),
                                    ),
                                    Text('41,50 جنيه'),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.grey[300],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('images/بلاستر .jpg'),
                                      width: 120,
                                      height: 120,
                                    ),
                                    Text('CURE AID PLASTER -1000 STRIPS'),
                                    Text(
                                      'عبله',
                                      style: TextStyle(color: Colors.grey[300]),
                                    ),
                                    Text('0,25  جنيه'),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 1,
                                color: Colors.grey[300],
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
