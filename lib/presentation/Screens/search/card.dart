import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Card_Search extends StatelessWidget {
  var controllr = TextEditingController();
  var mmcontrollr = TextEditingController();
  var vvcontrollr = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Card Number',
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                  controller: controllr,
                  keyboardType: TextInputType.phone,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'Please enter your Patient name';
                    }
                  },
                  onFieldSubmitted: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.credit_card,
                      color: Colors.grey[400],
                    ),
                    // suffix: Icon(Icons.remove_red_eye_rounded),
                    hintText: '0000 0000 0000 0000',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  )),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Expiry Data',
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 5),
                        child: TextFormField(
                            controller: mmcontrollr,
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please enter your Expiry Data';
                              }
                            },
                            onFieldSubmitted: (value) {},
                            decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.credit_card,color: Colors.grey[400],),
                              suffixIcon: Icon(
                                Icons.error_outline,
                                color: Colors.grey[400],
                                size: 20,
                              ),
                              hintText: 'MM/YY',
                              hintStyle: TextStyle(color: Colors.grey[400]),
                            )),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Security code',
                          style:
                              TextStyle(fontSize: 12, color: Colors.grey[400]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 5),
                        child: TextFormField(
                            controller: vvcontrollr,
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Please enter your Security code';
                              }
                            },
                            onFieldSubmitted: (value) {},
                            decoration: InputDecoration(
                              // prefixIcon: Icon(Icons.credit_card,color: Colors.grey[400],),
                              suffixIcon: Icon(
                                Icons.error_outline,
                                color: Colors.grey[400],
                                size: 20,
                              ),

                              hintText: 'CVV',
                              hintStyle: TextStyle(color: Colors.grey[400]),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // for(var i = 0 ; i >= 100; i++)
                      //   ModelLogin.buyprodact(product_id: First_aid.business[i]['product_id']);
                      Fluttertoast.showToast(
                          msg: "Reservation requested",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.blueGrey,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[500],
                    ),
                    child: Center(
                      child: Text(
                        'pay all',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
