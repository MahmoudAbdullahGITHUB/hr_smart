import 'package:flutter/material.dart';
import 'package:hr_app/screens/home_screen/home_screen.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CheckCodeScreen extends StatefulWidget {
  static const routName = '/checkCodePassword-screen';
  const CheckCodeScreen({Key? key}) : super(key: key);

  @override
  State<CheckCodeScreen> createState() => _CheckCodeScreenState();
}

class _CheckCodeScreenState extends State<CheckCodeScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(children: [
        SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                "assets/images/back.png",
              ),
            )),
        Center(
          child: FractionallySizedBox(
            widthFactor: .9,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Raster Password',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'enter Code',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    child: PinCodeTextField(
                      length: 5,
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      animationType: AnimationType.fade,
                      textStyle: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(
                          fontSize: 14.0,
                          color: Colors.white),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      // backgroundColor: Theme.of(context).cardColor,
                      enableActiveFill: false,
                     // controller: controller.codeController,
                      onCompleted: (v) {

                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                      appContext: context,
                      onChanged: (String value) {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width * .9,
                    child: ElevatedButton(
                      child: const Text('Check Code'),
                      onPressed: () {
                        navigateTo(context, HomeScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: KAppSecondColor, // background
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
