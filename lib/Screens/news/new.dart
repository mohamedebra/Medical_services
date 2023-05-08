import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({Key? key}) : super(key: key);

  @override
  State<New> createState() => _NewState();
}


class _NewState extends State<New> {

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
  Future<void> registerwithEmail()async{
    try{

      var headers = {'Accept' : 'application/json'};
      var url = Uri.parse('http://ugt.517.mywebsitetransfer.com/api/v1/user/auth/login' + 'http://ugt.517.mywebsitetransfer.com/api/v1/user/auth/register');

      Map body = {
        'name' : nameController.text,
        'email' : emailController.text,
        'password' : passwordController.text
      };

    }
    catch(e){

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
