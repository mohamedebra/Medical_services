import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class face_masks extends StatelessWidget {
  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getfacemasks(),
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
                        '                                   ${_lang.getAlcoholandsterilizationSearchbycategory()}',
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
                          image: AssetImage('images/ايفوني.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('ايفوني ماسك'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('90 جنيه'),
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
                          image: AssetImage('images/للاطفال قناع.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('للاطفال قناع للوجه استخدام مره واحده'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('125 جنيه'),
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
                          image: AssetImage('images/كمامه ٣.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('كمامه ٣ طبقات الصفا'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('212 جنيه'),
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
                          image: AssetImage('images/ميديزانا.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('ميديزانا جهاز استنشاق بخار ايطالي'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('555 جنيه'),
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
                          image: AssetImage('images/ايفوني ماسكات.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('ايفوني ماسكات'),
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
                          image: AssetImage('images/كي أن.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('كي أن ٩٥ قناع حمايه للوجه بدون فلتر '),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('24 جنيه'),
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
