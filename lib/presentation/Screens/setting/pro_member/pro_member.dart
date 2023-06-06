import 'package:flutter/material.dart';
import 'package:medical_services/presentation/resources/style.dart';

class Pro_Member extends StatelessWidget {
  const Pro_Member({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Become a pro member'
        ),
      ),
      body:  SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25,
                        top: 30,
                        bottom: 30
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),


                      ),
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1 month plan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Cover 1 adlult',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Counnect with a doctor \n  under 60 seconds',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Doctor avaliable to chat, \n voice & vidio call',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Unlimnted consultant',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Doctor avaliable to chat, \n voice & vidio call',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.money_off,size: 37,color: Colors.black54,),
                                Text("29",style: TextStyle(fontSize: 35,color: Colors.black),),
                                Text('user / month',style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 170,
                              height: 55,
                              child: TextButton(
                                  onPressed: ()
                                  {
                                  },
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[300],

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 30,
                      bottom: 30
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue[200],

                      ),
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('6 month plan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Cover 1 adlult',style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Counnect with a doctor \n  under 60 seconds',style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Doctor avaliable to chat, \n voice & vidio call',style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Unlimnted consultant',style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Doctor avaliable to chat, \n voice & vidio call',style: TextStyle(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.money_off,size: 37,color: Colors.black54,),
                                Text("150",style: TextStyle(fontSize: 35,color: Colors.black54),),
                                Text('user / month',style: TextStyle(
                                  fontSize: 12,color: Colors.black54
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 170,
                              height: 55,
                              child: TextButton(
                                  onPressed: ()
                                  {
                                  },
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: Colors.blue[300],
                                      fontSize: 24,
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,

                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25,
                        top: 30,
                        bottom: 30
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),


                      ),
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1 year plan',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Cover 1 adlult',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Counnect with a doctor \n  under 60 seconds',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Doctor avaliable to chat, \n voice & vidio call',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Unlimnted consultant',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.check,size: 15,),
                                SizedBox(width: 5,),
                                Text('Doctor avaliable to chat, \n voice & vidio call',style: TextStyle(fontSize: 12),)
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.money_off,size: 37,color: Colors.black54,),
                                Text("300",style: TextStyle(fontSize: 35,color: Colors.black),),
                                Text('user / month',style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              width: 170,
                              height: 55,
                              child: TextButton(
                                  onPressed: ()
                                  {
                                  },
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  )),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue[300],

                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),

            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('They talk about us',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,
                  vertical: 15),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/client1.png'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('images/star3.png'),width: 100,),
                    SizedBox(height: 5,),
                    Text('Used it for 1 month only. the way it is \n displayed and the way information is \n given is very good')
                  ],
                )
              ],
            ),
            SizedBox(height: 7,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,
                      vertical: 15),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('images/client.png'),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('images/star3.png'),width: 100,),
                    SizedBox(height: 5,),
                    Text('Used it for 1 month only. the way it is \n displayed and the way information is \n given is very good')
                  ],
                )
              ],
            ),
            SizedBox(height: 7,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,
                      vertical: 15),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.blue,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('images/client.png'),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(image: AssetImage('images/star3.png'),width: 100,),
                    SizedBox(height: 5,),
                    Text('Used it for 1 month only. the way it is \n displayed and the way information is \n given is very good')
                  ],
                )
              ],
            ),



          ],
        ),
      ),
    );
  }
}
