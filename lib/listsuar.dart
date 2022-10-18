import 'dart:convert';

import 'package:firstapp/elsurah.dart';
import 'package:firstapp/models/section_model.dart';
import 'package:firstapp/shared/components/components.dart';
import 'package:flutter/material.dart';

class ListSuar extends StatefulWidget {
  @override
  ElSuar createState() => ElSuar();
}

class ElSuar extends State<ListSuar> {
  List<SectionModel> section= [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSection();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "المصحف الشريف",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context , index) {
              return Container(
                child: ListTile(
                  title: Center(child: MaterialButton(
                    onPressed: (){
                      NavigatTo(context, Elsurah(cont: section[index].content,name: section[index].name,),);

                    },
                    child: Text("${section[index].name}", textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 30.0,),),

                  ),),

                ),
              );
            },
            separatorBuilder: (context , index) => Divider(height: 1,color: Colors.grey.withOpacity(.8),),
            itemCount: section.length,
        ),
      ),
    );
  }
  loadSection() async {
    section= [];
    DefaultAssetBundle.of(context)
        .loadString("assets/database/section.json")
        .then((data) {
      var response = json.decode(data);
      print("response:");
      print(response);
      response.forEach((row) {
        SectionModel _section = SectionModel.fromJson(row);
        section.add(_section);
        // print("length:");
        // print(section.length);
        // print("content:");
        // print(_section.content);
        // print(_section.reference);
        // print(_section.id);

      });
      setState(() {});
    }).catchError((error) {
      print("error in listsuar");
      print(error);
    });
  }


}
