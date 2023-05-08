import 'package:flutter/material.dart';
import 'package:medical_services/Screens/Drugs/woman_care/Hair_and_skin/Hair_and_skin.dart';
import 'package:medical_services/Screens/Drugs/woman_care/Taking_care_of_women/Taking_care_of_women.dart';
import 'package:medical_services/Screens/Drugs/woman_care/health_and_beauty/health_and_beauty.dart';
import 'package:medical_services/model/lang.dart';

class Woman_care extends StatelessWidget {

  Lang _lang = Lang();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_lang.getTakingcareofwomen(),style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Hair_and_skin()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('images/15150482641.jpg')),
                          Text(_lang.getHairandskin(),style: TextStyle(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> health_and_beauty()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('images/1236541.jpg'),),

                          Text(_lang.gethealthandbeauty(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Taking_care_of_women()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(image: AssetImage('images/1236541.jpg')),

                          Text(_lang.getTakingcareofwomen(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

