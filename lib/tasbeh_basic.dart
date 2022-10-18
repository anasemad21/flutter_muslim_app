import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasbehBasic extends StatefulWidget {
  @override
  State<TasbehBasic> createState() => _TasbehBasicState();
}

class _TasbehBasicState extends State<TasbehBasic> {
  int count1=0;
  int count2=0;
  int count3=0;
  int count4=0;
  int count5=0;
  int count6=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "المسبحة",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            child: Card(
              elevation: 20.0,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(
                15.0,
              )),
              child:Column(
                children: [
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'سبحان الله',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$count1',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count1--;
                              count1=0;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.greenAccent,),
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count1++;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                    'الحمد لله',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$count2',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count2--;
                              count2=0;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.greenAccent,),
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count2++;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'الله أكبر',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$count3',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count3--;
                              count3=0;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.greenAccent,),
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count3++;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'لا اله الا الله',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$count4',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count4--;
                              count4=0;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.greenAccent,),
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count4++;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'اللهم صلي علي سيدنا محمد',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$count5',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count5--;
                              count5=0;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.greenAccent,),
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count5++;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'لا حول ولا قوة الا بالله ',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$count6',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(onPressed:(){

                            setState(() {
                              count6--;
                              count6=0;
                            });
                          },
                            heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.remove,
                            ),
                            backgroundColor: Colors.greenAccent,),
                          FloatingActionButton(onPressed:(){
                            setState(() {
                              count6++;
                            });
                          },
heroTag: null,
                            mini: true,
                            child: Icon(
                              Icons.add,
                            ),
                            backgroundColor: Colors.greenAccent,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
