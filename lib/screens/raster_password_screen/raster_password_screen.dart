import 'package:flutter/material.dart';
import 'package:hr_app/screens/home_screen/home_screen.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';

import '../check_code_screen/check_code_screen.dart';

class RasterPasswordScreen extends StatefulWidget {
  static const routName = '/rasterPassword-screen';
  const RasterPasswordScreen({Key? key}) : super(key: key);

  @override
  State<RasterPasswordScreen> createState() => _RasterPasswordScreenState();
}

class _RasterPasswordScreenState extends State<RasterPasswordScreen> {
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
                    'Sent Code To Email',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'please enter your email address';
                      }
                    },
                    hint: 'Email',
                    label: 'Email',
                    suffix: Icons.email,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: width * .9,
                    child: ElevatedButton(
                      child: const Text('Sent'),
                      onPressed: () {
                        navigateTo(context, CheckCodeScreen());
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
