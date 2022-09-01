
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/btnWidget.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';
import 'package:hr_app/util/editTextFormFiled.dart';
import 'package:intl/intl.dart' as Intl;

class PermissionRequestScreen extends StatefulWidget {
  static const routName = '/home-screen';

  const PermissionRequestScreen({Key? key}) : super(key: key);

  @override
  State<PermissionRequestScreen> createState() => _PermissionRequestScreenState();
}

class _PermissionRequestScreenState extends State<PermissionRequestScreen> {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: KAppColor,
              centerTitle: false,
              title: Text('Vacation request ',
                  style: TextStyle(color: Colors.white)),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
            body: ListView.builder(
              itemCount: 20,
                itemBuilder: (ctx,index){
              return Card(
                elevation: 2.0,
                child: Row(children: [
                  Expanded(flex:1,child: Container(
                    child: Text("$index"),
                  )),
                  Expanded(flex:2,child: Column(children: [

                  ],)),
                ],),
              );
            })));
  }
}

