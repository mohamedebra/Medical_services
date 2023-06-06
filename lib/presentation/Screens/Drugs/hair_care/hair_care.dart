import 'package:flutter/material.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/Drugs/hair_care/hair_conditioner/hair_conditioner.dart';
import 'package:medical_services/presentation/Screens/Drugs/hair_care/hair_cream/hair_cream.dart';
import 'package:medical_services/presentation/Screens/Drugs/hair_care/hair_shampoo/hair_shampoo.dart';

class Hair_care extends StatelessWidget {
  Lang _lang = Lang();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _lang.gethaircare(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => hair_conditioner()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('images/1452.jpg'),
                            width: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            _lang.gethairconditioner(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => hair_cream()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('images/280821013228.jpg'),
                            width: 110,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            _lang.gethaircream(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => hair_shampoo()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('images/1452.jpg'),
                            width: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            _lang.getHairshampoo(),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
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
