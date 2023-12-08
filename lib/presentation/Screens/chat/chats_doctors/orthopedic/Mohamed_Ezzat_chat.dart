import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';

class Mohamed_Ezzat_chat extends StatelessWidget {
  var messageContror = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedicalState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/محمد عزت.jpg'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Dr , Mohamed Ezzat',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.grey[300]),
                      child: Text('Welcome my name Dr , Mohamed Ezzat Hussein'),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.only(
                            topEnd: Radius.circular(10),
                            topStart: Radius.circular(10),
                            bottomStart: Radius.circular(10),
                          ),
                          color: Colors.blue[100]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Welcome my doctor \n My name Mohamed'),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: TextFormField(
                              controller: messageContror,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'type your message here ...'),
                            ),
                          ),
                        ),
                        Container(
                          height: 70,
                          color: Colors.blue[300],
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: 1,
                            child: Icon(
                              Icons.send,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
