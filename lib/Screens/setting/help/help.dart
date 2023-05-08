import 'package:flutter/material.dart';
import 'package:medical_services/Screens/setting/help/help_send.dart';
import 'package:medical_services/style/style.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/link.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  final TextEditingController _numberCtrl = TextEditingController();
  @override
  void initState() {
    _numberCtrl.text = "01015613089";

    super.initState();
  }

  _callNumber() async {
    const number = '01015613089'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        centerTitle: false,
        backgroundColor: Colors.blueGrey[50],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Help_Send()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    IconBroken.Message,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Send us',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          ),
          InkWell(
            onTap: () => _callNumber(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Row(
                children: [
                  Icon(
                    IconBroken.Call,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Call us',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.grey[400],
                    ),
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
