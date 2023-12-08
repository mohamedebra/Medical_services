import 'package:flutter/material.dart';
import 'package:medical_services/lang/lang.dart';

class hair_cream extends StatelessWidget {
  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.gethaircream(),
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
                          image: AssetImage('images/هيمالايا كريم .jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text(
                            '        هيمالايا كريم بروتين تغذيه\nللشعر 210 مل '),
                        Text(
                          'علبه - كميه محدوده ',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('31 جنيه'),
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
                          image: AssetImage('images/بالمرز.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('بالمرز هيرفود ضد القشره 150 جم '),
                        Text(
                          'برطمان',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('93 جنيه'),
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
                          image: AssetImage('images/هيركود.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('هيركود جل ويت لوك 100 مل'),
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
                          image: AssetImage('images/سيروبايب.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('سيروبايب سيرم لشعر 100 مل '),
                        Text(
                          'زجاجه',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('220  جنيه'),
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
                          image: AssetImage('images/بالمرز ستايلنج .jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('    بالمرز ستايلنج جل سترونج هولد 150 جرام   '),
                        Text(
                          'انبوبه',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('93 جنيه'),
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
                          image: AssetImage('images/بانتين برو.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text(
                            '     بانتين برو - في بديل الزيت عنايه ملكيه 180 مل     '),
                        Text(
                          'علبه - غير متوفره حاليا ',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('45 جنيه'),
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
