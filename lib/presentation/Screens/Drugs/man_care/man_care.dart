import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/Drugs/man_care/Health_and_sexuality/Health_and_sexuality.dart';
import 'package:medical_services/presentation/Screens/Drugs/man_care/Personal_care/Personal_care.dart';
import 'package:medical_services/presentation/Screens/Drugs/man_care/hair_trimming/hair%20trimming.dart';


class Man_care extends StatelessWidget {

  Lang _lang = Lang();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getTakingcareoftheman(),style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Personal_care()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image(image: AssetImage('images/min.jpg'),width: 100,),
                              SizedBox(height: 10,),
                              Text(_lang.getPersonalcare(),style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Health_and_sexuality()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image(image: AssetImage('images/82574b1.jpg'),width: 110,),
                              const SizedBox(height: 16,),

                              Text(_lang.getsexualhealth(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> hair_trimming()));

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image(image: AssetImage('images/min.jpg'),width: 100,),
                              const SizedBox(height: 12,),
                              Text(_lang.gethairtrimming(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
