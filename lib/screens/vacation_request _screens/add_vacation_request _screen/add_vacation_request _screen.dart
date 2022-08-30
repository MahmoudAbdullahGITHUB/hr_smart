import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/btnWidget.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';
import 'package:hr_app/util/editTextFormFiled.dart';
import 'package:intl/intl.dart' as Intl;

class AddVacationScreen extends StatefulWidget {
  static const routName = '/home-screen';

  const AddVacationScreen({Key? key}) : super(key: key);

  @override
  State<AddVacationScreen> createState() => _AddVacationScreenState();
}

class _AddVacationScreenState extends State<AddVacationScreen> {
  final formSingUpKey = GlobalKey<FormState>();
  final toTimeTextController = TextEditingController();
  final fromTimeTextController = TextEditingController();
  final descrpationTextController = TextEditingController();
  final daysNumberTextController = TextEditingController();
  String selectMonth = '';
  bool switchValue=false;
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
                                  FormField<String>(
                                    //  validator: validatorobject,
                                    builder: (FormFieldState<String> state) {
                                      return InputDecorator(
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade100,
                                            filled: true,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5.0,
                                                    horizontal: 5.0),
                                            border: InputBorder.none,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                  color: Colors.grey.shade100,
                                                  width: 1.0),
                                            ),
                                          ),
                                          child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                            hint: Text("Vacation Type",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle2!
                                                    .copyWith(
                                                      fontSize: 14.0,
                                                      color: Colors.black,
                                                    )),
                                            value: selectMonth == ''
                                                ? null
                                                : selectMonth,
                                            items: <String>[
                                              '1',
                                              '2',
                                              '3',
                                              '4',
                                              '5',
                                              '6',
                                              '7',
                                              '8',
                                              '9',
                                              '10',
                                              '11',
                                              '12'
                                            ].map((String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2!
                                                        .copyWith(
                                                          fontSize: 14.0,
                                                          color: Colors.black,
                                                        )),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {
                                              selectMonth = newValue!;
                                            },
                                          )));
                                    },
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  CustomEditTextFormFiled().MyInputField(
                                      label: 'NumberOfDays',
                                      textInputType: TextInputType.text,
                                      controller: daysNumberTextController,
                                      context: context),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomEditTextFormFiled()
                                            .MyInputField(
                                                label: 'From Date',
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
                                                label: 'To Date',
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
                                  Text("Total Days /  6 Days ",
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

                                  Row(
                                    children: [
                                      CupertinoSwitch(
                                        activeColor:
                                        KAppSecondColor,
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
                                  CustomEditTextFormFiled().MyInputField(
                                      label: 'Discrption',
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

