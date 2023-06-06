import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class Health_and_sexuality extends StatelessWidget {
  Lang _lang = Lang();
  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getsexualhealth(),
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
                          image: AssetImage('images/فياجرا.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('فياجرا 100 مجم 4 اقراص'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('77 جنيه'),
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
                          image: AssetImage('images/دوريكس جل.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('دوريكس جل المتعه بلاي فييل 50 مل'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('212 جنيه'),
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
                          image: AssetImage('images/اريك.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('اريك 100 مجم 12 قرص'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('64 جنيه'),
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
                          image: AssetImage('images/كافيجين.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('كافيجين ٣٠ كبسوله '),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('105 جنيه'),
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
                          image: AssetImage('images/نابيفيت.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('نابيفيت 100 مجم 4 اقراص'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('24 جنيه'),
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
                          image: AssetImage('images/سيمبلكس.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('سيمبلكس واقي ذكري بلاك 3 قطع '),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('34 جنيه'),
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
