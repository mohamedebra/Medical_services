import 'package:flutter/material.dart';
import 'package:medical_services/model/lang.dart';

class Hair_and_skin extends StatelessWidget {
  Lang _lang = Lang();

  var messageContror = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getHairandskin(),style: TextStyle(fontSize: 20),),
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
                          image: AssetImage('images/بيبانثين.jpg'),width: 120,height: 120,),
                        Text(
                            'بيبانثين كريم 30 جم'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '100 جنيه'),
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
                          image: AssetImage('images/غارنيه.jpg'),width: 120,height: 120,),
                        Text(
                            'غارنيه غسول البشره \nبفيتامين سي 100 مل'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '60 جنيه'),
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
                          image: AssetImage('images/ايمولينت.jpg'),width: 120,height: 120,),
                        Text(
                            'ايمولينت كريم من لونا لليد والكعب 40 جرام '),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '28 جنيه'),
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
                          image: AssetImage('images/بانثينول.jpg'),width: 120,height: 120,),
                        Text(
                            'بانثينول 2٪؜ كريم 20 جم'),
                        Text(
                          'عبله',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '11 جنيه'),
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
                          image: AssetImage('images/نيفيا.jpg'),width: 120,height: 120,),
                        Text(
                            'نيفيا كريم سوفت\n مرطب 100 مل '),
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
                          image: AssetImage('images/Garnier.jpg'),width: 120,height: 120,),
                        Text(
                            'Garnier Micellar cleansing water & Daily make-up Remove '),
                        Text(
                          'زجاجه',style: TextStyle(color: Colors.grey[300]),),
                        Text(
                            '65 جنيه'),
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
