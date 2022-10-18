import 'package:flutter/material.dart';

class Elsurah extends StatelessWidget
{
  String? cont;
  String? name;
  Elsurah({this.cont,this.name});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
         backgroundColor: Colors.green,title: Text("${name}", textDirection: TextDirection.rtl,style: TextStyle(fontSize: 40.0,),)),
     body: SingleChildScrollView(
       physics: BouncingScrollPhysics(),
         child: Container(color: Colors.white60,
             child: Text('${cont}', textDirection: TextDirection.rtl,
           style: TextStyle(fontSize: 20.0,),))),
   );
  }

}
