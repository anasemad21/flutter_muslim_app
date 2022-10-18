
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firstapp/cubit.dart';
import 'package:firstapp/listsuar.dart';
import 'package:firstapp/first_cubit_state.dart';
import 'package:firstapp/icon_details_screen.dart';
import 'package:firstapp/shared/components/components.dart';
import 'package:firstapp/tasbeh_basic.dart';
import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BasicScreen extends StatefulWidget {
  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {



  @override


  Widget build(BuildContext context) {
    String locale = 'ar';
    HijriCalendar _today = HijriCalendar.now();
    HijriCalendar.setLocal(locale);
    final now = new DateTime.now();
    String formatter = DateFormat('yMd').format(now);
    dynamic currentTime = DateFormat.jm().format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'برنامج مسلم',
        ),
      ),
      body:BlocConsumer<FirstCubit, FirstCubitState>(
        listener: (context, state) {},
        builder: (context, state) {
          var listt = FirstCubit.get(context).list;
          return ConditionalBuilder(condition: listt!=null, builder:(context) => Center(
            child: Column(
              children: [
                Expanded(
                  child: Card(
                    elevation: 8.0,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/muslim.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _today.getDayName(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                  ),
                                ),
                                Text(
                                  formatter,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  listt!.data!.date!.hijri!.month!.ar!,
                                  style: TextStyle(color: Colors.white),),
                                Text(
                                  _today.toFormat("dd  MMMM yyyy"),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                                Icon(Icons.location_on,),
                                Text(
                                  listt.data!.meta!.timezone!,
                                  style: TextStyle(color: Colors.white,
                                    fontSize: 15.0,),),
                              ],
                            ),
                            SizedBox(
                              width: 90.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 15.0,),
                                      child: Column(
                                        children: [
                                          Text(
                                            "الظهر",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "العصر",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),

                                          Text(
                                            "المغرب",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "العشاء",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          if ( listt.data!.date!.hijri!.month!
                                              .number == 9)
                                            Text('الامساك',
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              ),),
                                          Text(
                                            "االفجر",
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 30.0,

                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            listt.data!.timings!.dhuhr!,
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            listt.data!.timings!.asr!,
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 5.0,),
                                          Text(
                                            listt.data!.timings!.maghrib!,
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 5.0,),
                                          Text(
                                            listt.data!.timings!.isha!,
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 5.0,),
                                          if ( listt.data!.date!.hijri!.month!
                                              .number == 9)
                                            Text(listt.data!.timings!.imsak!,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              ),),
                                          if ( listt.data!.date!.hijri!.month!
                                              .number == 9)

                                            SizedBox(height: 15.0,),

                                          Text(
                                            listt.data!.timings!.fajr!,
                                            style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Text(
                                  currentTime,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.green[200],
                        margin: EdgeInsets.all(
                          25,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            NavigatTo(context, IconDetailsScreen(id: 1,title: 'أذكار الصباح'),);
                          },
                          child: Text(
                            'اذكار الصباح ',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 20.0,),
                      Container(
                        width: double.infinity,
                        color: Colors.green[200],
                        margin: EdgeInsets.all(
                          25,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            NavigatTo(context, IconDetailsScreen(id: 2,title: 'أذكار المساء'),);
                          },
                          child: Text(
                            'اذكار المساء',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.green[200],
                        margin: EdgeInsets.all(
                          25,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            NavigatTo(context, IconDetailsScreen(id: 3,title: ' أذكار الإستيقاظ من النوم'),);
                          },
                          child: Text(
                            'أذكار الإستيقاظ من النوم',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.green[200],
                        margin: EdgeInsets.all(
                          25,
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            NavigatTo(context, TasbehBasic(),);
                          },
                          child: Text(
                            'التسبيح',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 20.0,),
                      Container(
                        width: double.infinity,
                        color: Colors.green[200],
                        margin: EdgeInsets.all(
                          25,
                        ),
                        child: MaterialButton(
                          onPressed: () {

                            NavigatTo(context, ListSuar(),);

                          },
                          child: Text(
                            'القرآن الكريم',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 20.0,),

                    ],
                  ),
                ),

              ],
            ),
          ) , fallback:(context) => Center(child: CircularProgressIndicator(),),);

        },
      ),
      );
  }
}



