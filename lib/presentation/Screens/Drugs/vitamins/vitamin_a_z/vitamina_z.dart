import 'package:flutter/material.dart';
import 'package:medical_services/lang/lang.dart';

class Vitamina_z extends StatelessWidget {
  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getVitaminsfromAtoZ(),
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
            const SizedBox(
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
            const SizedBox(
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
                          image: AssetImage('images/دافاليندي.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('دافاليندي 10000 وحده دوليه 30 قرص'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        Text('40.5 جنيه'),
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
                          image: AssetImage('images/فيدروب.jpg'),
                          width: 120,
                          height: 120,
                        ),
                        Text('فيدروب 2800 وحده دوليه نقط بالفم 15 مل'),
                        Text(
                          'عبله',
                          style: TextStyle(color: Colors.grey[300]),
                        ),
                        const Text('16 جنيه'),
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
          ],
        ),
      ),
    );
  }
}
