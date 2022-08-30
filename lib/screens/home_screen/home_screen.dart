import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';

import '../vacation_request _screens/add_vacation_request _screen/add_vacation_request _screen.dart';

class HomeScreen extends StatefulWidget {
  static const routName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notifications),
        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ImageIcon(AssetImage('assets/images/image_icon.png')))
        ],
        backgroundColor: KAppColor,
        centerTitle: true,
        title: Text('Employees', style: TextStyle(color: Colors.white)),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 50),
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return DottedBorder(
              dashPattern: [7, 3],
              child: ListTile(
                leading: Container(
                    height: double.infinity,
                    child: Text('8',style: TextStyle(backgroundColor: Colors.red),)),
                title: Text('Vacation request ',style: TextStyle(fontWeight: FontWeight.bold,color: KTextFiledColor),),
                subtitle: Text('subtitle'),
                trailing: CircleAvatar(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        navigateTo(context, AddVacationScreen());
                      },
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
