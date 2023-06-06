import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';

class health_and_beauty extends StatelessWidget {

  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.gethealthandbeauty(),style: TextStyle(fontSize: 20),),
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
                          image: AssetImage('images/فرشه اسنان.jpg'),width: 120,height: 120,),
                        Text(
                            'فرشه اسنان'),
                        Text(
                          'علبه - كميه محدوده ',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '22 جنيه'),
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
                          image: AssetImage('images/سيجنال.jpg'),width: 120,height: 120,),
                        Text(
                            'سيجنال معجون اسنان مبيض - 50 مل'),
                        Text(
                          'انبوبه ',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '22 جنيه'),
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
                          image: AssetImage('images/ليسترين .jpg'),width: 120,height: 120,),
                        Text(
                            'ليسترين غسول الفم بالنعناع\n 250 مل'),
                        Text(
                          'زجاجه - كميه محدوده ',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '66 جنيه'),
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
                          image: AssetImage('images/سيجنال كومبليت .jpg'),width: 120,height: 120,),
                        Text(
                            'سيجنال كومبليت 8 معجون \nاسنان بالفحم الابيض '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '21,5 جنيه'),
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
                          image: AssetImage('images/سنسوداين.jpg'),width: 120,height: 120,),
                        Text(
                            'سنسوداين معجون اسنان\n عنايه متعدده + تبيض \nالاسنان 100 مل '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '80 جنيه'),
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
                          image: AssetImage('images/معجون اسنان.jpg'),width: 120,height: 120,),
                        Text(
                            'معجون اسنان ملمع من\nديبوردنت - 25 مل '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '42 جنيه'),
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
