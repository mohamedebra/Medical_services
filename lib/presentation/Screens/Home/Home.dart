import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/domian/model/lang.dart';
import 'package:medical_services/presentation/Screens/market/market.dart';
import 'package:medical_services/presentation/Screens/notifications/notifications.dart';
import 'package:medical_services/presentation/Screens/search/search.dart';
import 'package:medical_services/presentation/resources/style.dart';
import 'package:medical_services/business_logic/states.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _lang.getLang();
    });

    super.initState();
  }

  Lang _lang = Lang();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedialState>(
        listener: (context, state) {
          if (state is MedicalNewPostNav) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Search()));
          }
        },
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey[50],
              leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Market(
                                prodact_id: null,
                              )));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Icon(
                          Icons.production_quantity_limits,
                          color: Colors.blue[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55, right: 0),
                    child: Image(
                      image: AssetImage('images/5555 (2).png'),
                      height: 60,
                    ),
                  ),
                  Text(
                    cubit.title[cubit.currentIndex],
                  ),
                ],
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifications()));
                        },
                        icon: Icon(
                          IconBroken.Notification,
                          size: 27,
                        ),
                        color: Colors.blue[200],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.shifting,
                  selectedItemColor: Colors.blue[200],
                  currentIndex: cubit.currentIndex,
                  onTap: (index) {
                    cubit.changeBottonNav(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Home), label: _lang.getHome()),
                    BottomNavigationBarItem(
                        icon: Icon(
                          IconBroken.Paper,
                          size: 25,
                        ),
                        label: _lang.getreports()),
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Chat), label: _lang.getChat()),
                    BottomNavigationBarItem(
                        icon: Icon(IconBroken.Setting),
                        label: _lang.getsetting()),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
