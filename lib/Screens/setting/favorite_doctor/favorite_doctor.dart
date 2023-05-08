import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_services/cubit/cubit.dart';
import 'package:medical_services/cubit/states.dart';

class Favorite_doctor extends StatelessWidget {
  const Favorite_doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext  context) => AppCubit(),
      child: BlocConsumer<AppCubit,MedialState>(
        listener: (context,state) {},
        builder: (context, state){
          return Scaffold(
            appBar: AppBar(
              title: Text('Favorite Doctor',style: TextStyle(fontSize: 23),),
              backgroundColor: Colors.blueGrey[50],
              centerTitle: false,
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5,top: 50),
                  child: Card(
                    elevation: 10,
                    child: InkWell(
                      onTap: (){},
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(

                                        children: [
                                          Stack(

                                            children: [
                                              Image(image: AssetImage('images/doctor.png'),
                                                width: 70,
                                                height: 70,

                                              ),

                                            ],
                                            alignment: Alignment.bottomRight,
                                          ),
                                          SizedBox(width: 25,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Dr ,  Mohamed Ebrahim',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text('Cardiologist',style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(onPressed: (){
                                AppCubit.get(context).changeIconfavorite();
                              }, icon: Icon(AppCubit.get(context).iconData,size: 17,color: Colors.red[400],))


                              //IconButton(onPressed: (){
                              //                                       AppCubit.get(context).changeIcon();
                              //                                     },icon: Icon(AppCubit.get(context).icon),),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    elevation: 10,
                    child: InkWell(
                      onTap: (){},
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(

                                        children: [
                                          Stack(

                                            children: [
                                              Image(image: AssetImage('images/doctor2.png'),
                                                width: 70,
                                                height: 70,

                                              ),

                                            ],
                                            alignment: Alignment.bottomRight,
                                          ),
                                          SizedBox(width: 25,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Dr ,  Wafaa Abu Talib',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text('Gastroenterologist doctor',style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(onPressed: (){
                                AppCubit.get(context).changeIconfavorite1();
                              }, icon: Icon(AppCubit.get(context).iconData1,size: 17,color: Colors.red[400],))


                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Card(
                    elevation: 10,
                    child: InkWell(
                      onTap: (){},
                      child: Stack(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(

                                        children: [
                                          Stack(

                                            children: [
                                              Image(image: AssetImage('images/doctor3.png'),
                                                width: 70,
                                                height: 70,

                                              ),

                                            ],
                                            alignment: Alignment.bottomRight,
                                          ),
                                          SizedBox(width: 25,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text('Dr ,  Hossam Mohamed',style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text('Ophthalmologist',style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(onPressed: (){
                                AppCubit.get(context).changeIconfavorite2();
                              }, icon: Icon(AppCubit.get(context).iconData2,size: 17,color: Colors.red[400],))

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
