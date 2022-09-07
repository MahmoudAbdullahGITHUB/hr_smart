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
  State<PermissionRequestScreen> createState() =>
      _PermissionRequestScreenState();
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
              title: Text('Permission request ',
                  style: TextStyle(color: Colors.white)),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
            body: ListView.builder(
                itemCount: 20,
                itemBuilder: (ctx, index) {
                  return Card(
                    elevation: 2.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: KAppSecondColor,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "$index",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                        SizedBox(width: 10.0,),
                        Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sick Leave',
                                        style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black)),
                                    Container(
                                      width: 70.0,
                                      height: 28.0,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text('Cancel',
                                            textAlign: TextAlign.center,

                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.date_range_outlined,
                                      color:  Colors.black,
                                      size: 16.0,
                                    ),
                                    Text('20 - 06 - 2022',
                                        style: TextStyle(fontWeight:FontWeight.bold,
                                            color: Colors.black)),

                                  ],
                                ),
                                Text("Total Time /  6 Hours ",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(
                                        fontSize: 14.0,
                                        color: Colors.black)),
                              ],
                            )),
                      ],
                    ),
                  );
                })));
  }
}
