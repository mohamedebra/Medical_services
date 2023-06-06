import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class Personal_care extends StatelessWidget {
  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getPersonalcare(),
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
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('images/ديتول.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        const Text('ديتول صابون الاصلي 85 جم'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('10 جنيه'),
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
                          image: AssetImage('images/صابون جلسرين.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('صابون جلسرين شفاف من لونا 72 جرام'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('25 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                'اضافه',
                                style: TextStyle(color: Colors.blue),
                              ))),
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
                          image: AssetImage('images/جيليت.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('جيليت بلو 2 شفره حلاقه '),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('12 جنيه'),
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
                          image: AssetImage('images/نيفا جل.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('نيفا جل للاستحمام ديب للرجال 250 مل'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('75 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                'اضافه',
                                style: TextStyle(color: Colors.blue),
                              ))),
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
                          image: AssetImage('images/نيفا رغوه .jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('نيفا رغوه حلاقه ديب امباكت سموث 200 مل'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('180 جنيه'),
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
                          image: AssetImage('images/زاك انتينس.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('زاك انتينس بلاك جولد عطر 150 مل'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('250 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: () {},
                              child: Center(
                                  child: Text(
                                'اضافه',
                                style: TextStyle(color: Colors.blue),
                              ))),
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
    );
  }
}
