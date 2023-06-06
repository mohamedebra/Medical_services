import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class hair_trimming extends StatelessWidget {

  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.gethairtrimming(),style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
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
            const SizedBox(
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
            const SizedBox(
              height: 15,),
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
                          image: AssetImage('images/هيد اند شولدرز .jpg'),width: 120,height: 120,),
                        Text(
                            'يد اند شولدرز منتول فريش ضد القشره 200 مل'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '55 جنيه'),
                        InkWell(
                          onTap: (){},
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
                          image: AssetImage('images/اكس مزيل.jpg'),width: 120,height: 120,),
                        Text(
                            'اكس مزيل عرق وسبراي للجسم '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '95 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]

                          ),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: (){},
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
                          image: AssetImage('images/شامبو .jpg'),width: 120,height: 120,),
                        Text(
                            'شامبو ضد القشره للتنظيف العميق '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '97 جنيه'),
                        InkWell(
                          onTap: (){},
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
                          image: AssetImage('images/كانتو بلسم.jpg'),width: 120,height: 120,),
                        Text(
                            'كانتو بلسم يترك علي الشعر بالشيا برطمان 453 جم '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '260 جنيه'),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue[100]

                          ),
                          width: 120,
                          height: 30,
                          child: InkWell(
                              onTap: (){},
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
      ),
    );
  }
}
