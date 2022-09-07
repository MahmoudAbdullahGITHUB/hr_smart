import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/btnWidget.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';
import 'package:hr_app/util/editTextFormFiled.dart';
import 'package:intl/intl.dart' as Intl;

class AddMissionScreen extends StatefulWidget {
  static const routName = '/home-screen';

  const AddMissionScreen({Key? key}) : super(key: key);

  @override
  State<AddMissionScreen> createState() => _AddMissionScreenState();
}

class _AddMissionScreenState extends State<AddMissionScreen> {
  final formSingUpKey = GlobalKey<FormState>();
  final toTimeTextController = TextEditingController();
  final fromTimeTextController = TextEditingController();
  final descrpationTextController = TextEditingController();
  final daysNumberTextController = TextEditingController();
  final ageTextController = TextEditingController();
  String selectMonth = '';
  bool switchValue = false;
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
              title: Text('Mission request ',
                  style: TextStyle(color: Colors.white)),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
            body: Form(
                key: formSingUpKey,
                child: SingleChildScrollView(
                    child: AnimatedPadding(
                        padding: MediaQuery.of(context).viewInsets,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.decelerate,
                        child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomEditTextFormFiled()
                                            .MyInputField(
                                                label: 'Mission Name',
                                                textInputType:
                                                    TextInputType.text,
                                                controller:
                                                    descrpationTextController,
                                                context: context),
                                      ),
                                      Expanded(
                                        child: CustomEditTextFormFiled()
                                            .MyInputField(
                                                label: 'Mission Type',
                                                textInputType:
                                                    TextInputType.text,
                                                controller:
                                                    descrpationTextController,
                                                context: context),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  CustomEditTextFormFiled().MyInputField(
                                      prefixIcon: Icon(
                                        Icons.date_range,
                                        color: KAppSecondColor,
                                      ),
                                      label: 'Date ',
                                      textInputType: TextInputType.text,
                                      controller: ageTextController,
                                      onTap: () async {
                                        DateTime date = DateTime(1900);
                                        FocusScope.of(context)
                                            .requestFocus(new FocusNode());

                                        date = (await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now(),
                                        ))!;

                                        ageTextController.text =
                                            Intl.DateFormat("yyyy-MM-dd")
                                                .format(date);
                                      },
                                      context: context),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomEditTextFormFiled()
                                            .MyInputField(
                                                label: 'From Time',
                                                readOnly: true,
                                                onTap: () async {
                                                  TimeOfDay initialTime =
                                                      TimeOfDay.now();
                                                  TimeOfDay? pickedTime =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime: initialTime,
                                                  );
                                                  /*controller.fromTimeTextController.text =
                                            "${pickedTime!.hour.toString()}:${pickedTime!.minute.toString()}";*/
                                                  final now =
                                                      new DateTime.now();
                                                  final dt = DateTime(
                                                      now.year,
                                                      now.month,
                                                      now.day,
                                                      pickedTime!.hour,
                                                      pickedTime.minute);
                                                  fromTimeTextController.text =
                                                      "${Intl.DateFormat('HH:mm').format(dt)}";
                                                },
                                                controller:
                                                    fromTimeTextController,
                                                context: context),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Expanded(
                                        child: CustomEditTextFormFiled()
                                            .MyInputField(
                                                label: 'To Time',
                                                readOnly: true,
                                                onTap: () async {
                                                  TimeOfDay initialTime =
                                                      TimeOfDay.now();
                                                  TimeOfDay? pickedTime =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime: initialTime,
                                                  );
                                                  final now =
                                                      new DateTime.now();
                                                  final dt = DateTime(
                                                      now.year,
                                                      now.month,
                                                      now.day,
                                                      pickedTime!.hour,
                                                      pickedTime.minute);
                                                  toTimeTextController.text =
                                                      "${Intl.DateFormat('HH:mm').format(dt)}";
                                                },
                                                controller:
                                                    toTimeTextController,
                                                context: context),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text("Total Time /  6 Hours ",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2!
                                          .copyWith(
                                              fontSize: 14.0,
                                              color: Colors.black)),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  CustomEditTextFormFiled().MyInputField(
                                      label: 'Mission Descrpation',
                                      textInputType: TextInputType.text,
                                      maxLine: 3,
                                      controller: descrpationTextController,
                                      context: context),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  CustomEditTextFormFiled().MyInputField(
                                      label: 'Mission Achievements',
                                      textInputType: TextInputType.text,
                                      maxLine: 3,
                                      controller: descrpationTextController,
                                      context: context),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      CupertinoSwitch(
                                        activeColor: KAppSecondColor,
                                        value: switchValue,
                                        onChanged: (value) {
                                          switchValue = value;
                                        },
                                      ),
                                      Text("Is Half Days",
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2!
                                              .copyWith(
                                                  fontSize: 14.0,
                                                  color: Colors.black))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  CustomEditTextFormFiled().MyInputField(
                                      label: 'Expenses Reason',
                                      textInputType: TextInputType.text,
                                      maxLine: 3,
                                      controller: descrpationTextController,
                                      context: context),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  BtnWidget(width: width)
                                ])))))));
  }
}
