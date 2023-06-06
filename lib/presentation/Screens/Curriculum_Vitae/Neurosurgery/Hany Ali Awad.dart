import 'package:flutter/material.dart';
import 'package:medical_services/presentation/Screens/chat/chats_doctors/neurosurgery/Hany_Ali_Awad_chat.dart';
import 'package:medical_services/presentation/Screens/reservation/reservtion_Neurosurgery/reservtion_Hany_Ali_Awad.dart';


class Hany_Ali_Awad extends StatelessWidget {
  const Hany_Ali_Awad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('images/هاني علي.jpg'),
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text('Dr ,  Hany Ali Awad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(height: 5,),
                    Text('Neurosurgery',style: TextStyle(fontSize: 15,color: Colors.grey),),
                    Text('المواعيد',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Text('09:00 AM  - 04:00 PM   ',style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue
                    ),),
                    Text('سعر الحجز',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    Text('200 ج ',style: TextStyle(
                        fontSize: 15,
                        color: Colors.blue
                    ),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Stack(
              children: [
                Container(
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Colors.blue[100],
                  ),
                ),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 15),
                  child: Row(
                    children: [
                      Expanded(child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.people_alt_outlined,size: 35,),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: const [
                              Text('377+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),),
                              Text('patients',style: TextStyle(fontSize: 15,color: Colors.black54),)
                            ],
                          )
                        ],
                      )),
                      Expanded(child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.insights,size: 35,),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text('10 years',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 20),),
                              Text('Experiences',style: TextStyle(fontSize: 15,color: Colors.black54),)
                            ],
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 50,),


              ],
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(50),
                        topStart: Radius.circular(50),

                      ),
                      color: Colors.blue[100]
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('About doctor',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 15,),
                        Text('''            
Consultant of spinal deformities and scoliosis repair surgeries Lecturer of brain, nerves and spine surgery at Mansoura College of Medicine Fellowship in spine surgery Miami University - USA Subspecialty Surgery to repair deformities and scoliosis in children Microscopic surgeries and removal of lumbar and cervical cartilage Surgeries to remove brain and spinal cord tumors Surgeries for brain tumors, birth defects and skull deformities in children, arterial aneurysm surgeries and cerebral blood birthmarks, accident surgeries, spine fractures and stadium injuries
                     ''',style: TextStyle(
                            color: Colors.grey[700]
                        ),),
                        SizedBox(height: 25,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child:    IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Hany_Ali_Awad_chat()));
                              }, icon: Icon(Icons.chat,color: Colors.white,)),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * .6,),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              child:    IconButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Reservation_Hany_Ali_Awad()));
                              }, icon: Icon(Icons.price_change_outlined,color: Colors.white,)),
                            ),


                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
