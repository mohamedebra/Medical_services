import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/Drugs/vitamins/Vitamin/vitamin.dart';
import 'package:medical_services/presentation/Screens/Drugs/vitamins/vitamin_a_z/vitamina_z.dart';

class Vitamins extends StatelessWidget {
  Lang _lang = Lang();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.getVitaminsandnutrition(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  InkWell(
                    child: const Image(
                      image: AssetImage('images/296.jpg'),
                      width: 170,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vitamin()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _lang.getVitaminsupplements(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  InkWell(
                    child: Image(
                      image: AssetImage('images/header.jpg'),
                      width: 170,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Vitamina_z()));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    _lang.getVitaminsfromAtoZ(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
