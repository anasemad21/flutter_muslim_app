import 'package:dio/dio.dart';
import 'package:firstapp/basic_screen.dart';
import 'package:firstapp/cubit.dart';
import 'package:firstapp/first_cubit_state.dart';
import 'package:firstapp/network/remote/Dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());

  DioHelper.init();
  //DioHelperQuran.init();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   return MultiBlocProvider(providers: [BlocProvider(create: (context)=>FirstCubit()..GetData(),)], child: MaterialApp(
     debugShowCheckedModeBanner: false,
     home: BasicScreen(),
   ),);
  }
}
