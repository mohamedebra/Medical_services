import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Help_Send extends StatefulWidget {
  const Help_Send({Key? key}) : super(key: key);

  @override
  State<Help_Send> createState() => _Help_SendState();
}

class _Help_SendState extends State<Help_Send> {
  var txetContorlr = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Send'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                end: BorderSide(color: Colors.grey),
                start: BorderSide(color: Colors.grey),
                top: BorderSide(color: Colors.grey),
                bottom: BorderSide(color: Colors.grey),
              )),
              height: 200,
              child: TextField(
                onTap: () {},
                controller: txetContorlr,
                maxLines: 7,
                decoration: const InputDecoration(
                  hintText: '                                  Help Center',
                  enabled: true,
                  helperMaxLines: 5,
                  focusedErrorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  constraints: BoxConstraints(
                      maxWidth: double.infinity, maxHeight: double.infinity),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[300],
                ),
                child: TextButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        Fluttertoast.showToast(
                            msg: "Help Send",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.blueGrey,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: Center(
                      child: Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
