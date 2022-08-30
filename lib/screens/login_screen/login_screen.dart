import 'package:flutter/material.dart';
import 'package:hr_app/screens/home_screen/home_screen.dart';
import 'package:hr_app/shared/components/components.dart';
import 'package:hr_app/util/components.dart';
import 'package:hr_app/util/constants/Colors.dart';

import '../raster_password_screen/raster_password_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

        /*    SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/back.png',
            fit: BoxFit.fill,
          ),
        ),*/
        Center(
          child: FractionallySizedBox(
            widthFactor: .9,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LogIn',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
                    hint: 'User Name',
                    label: 'User Name',
                    suffix: Icons.person_outline,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'please enter your email address';
                      }
                    },
                    hint: 'Password',
                    label: 'Password',
                    suffix: Icons.lock_outline,
                  ),
                  /*  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    validator: (){},
                    onChanged: (String value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),*/
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: width * .9,
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        navigateTo(context, HomeScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: KAppSecondColor, // background
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      navigateTo(context, RasterPasswordScreen());
                    },
                    child: const Text('Forget Password?'),
                    style: TextButton.styleFrom(
                      primary: KAppSecondColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
