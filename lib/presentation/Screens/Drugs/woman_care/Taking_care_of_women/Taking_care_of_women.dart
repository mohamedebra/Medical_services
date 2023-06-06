import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class Taking_care_of_women extends StatelessWidget {
  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getTakingcareofwomen(),style: TextStyle(fontSize: 20),),
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
            SizedBox(
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
            SizedBox(
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
                          image: AssetImage('images/بوباي.jpg'),width: 120,height: 120,),
                        Text(
                            'بوباي مستحضر جل ملون\n لحمايه من اشعه الشمس'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '185 جنيه'),
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
                          image: AssetImage('images/دوف.jpg'),width: 120,height: 120,),
                        Text(
                            'دوف تدليل غسول الايدي بخلاصه \nزبده الشيا والفانيليا 500 مل'),
                        Text(
                          'زجاجه ',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '87 جنيه'),
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
                          image: AssetImage('images/ديتول غسول.jpg'),width: 120,height: 120,),
                        Text(
                            'ديتول غسول الايدي للعنايه\n بالبشره 200 مل '),
                        Text(
                          'علبه ( كميه محدوده )',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '54 جنيه'),
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
                          image: AssetImage('images/صابون الايدين.jpg'),width: 120,height: 120,),
                        Text(
                            'صابون الايدين من ديتول علي\n هيئه سائل - 400 مل '),
                        Text(
                          'علبه - غير متوفره حاليا ',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '78 جنيه'),
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
                          image: AssetImage('images/اسرار.jpg'),width: 120,height: 120,),
                        Text(
                            'اسرار دوف المعذيه \nالتنشيطيه 500 مل '),
                        Text(
                          'زجاجه',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '87 جنيه'),
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
              ],
            ),


          ],
        ),
      ),
    );
  }
}
