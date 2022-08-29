import 'package:flutter/material.dart';

class SharedMethods {




  static void navigateTo({
    required BuildContext context,
    required Widget widget,
  }) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }





  static bool emailValidator(String email, {bool isOptional: false}) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9!-]+\.[a-zA-Z]+")
        .hasMatch(email);
    if (email.isEmpty && isOptional) {
      emailValid = true;
    }
    return emailValid;
  }

  static bool numberValidator(String number) {
    bool numberValidate = RegExp(r'^[0-9]*$').hasMatch(number);

    return numberValidate;
  }



  static String handlePhoneNumber(String phone) {
    if (phone.startsWith("0")) {
      return phone;
      // return "+2" + phone;
    } else {
      return "0$phone";
    }
  }

  static String loadMoreText(String text, int long) {
    if (text.length > long) {
      return text.substring(0, long) + "...";
    } else {
      return text;
    }
  }















/*
  static Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }
  */

/*
  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))
        .buffer
        .asUint8List();
  }
*/

/*
  static botToast(
      {Color bgColor,
      Color titleColor,
      Color subTitleColor,
      String title,
      String subTitle,
      @required BuildContext context}) async {
    return BotToast.showSimpleNotification(
        title: title ??
            AppLocalizations.of(context).translate(LocalizationKey.ATTENTION),
        subTitle: subTitle ?? "We not serve this area yet.",
        duration: Duration(seconds: 4),
        backgroundColor: bgColor ?? Colors.grey[50],
        subTitleStyle: TextStyle(
            fontFamily: userFont(context),
            color: subTitleColor ?? Color(SECOND_COLOR),
            fontWeight: FontWeight.w600,
            fontSize: 14),
        titleStyle: TextStyle(
            fontFamily: userFont(context),
            color: titleColor ?? Color(BLUE),
            fontWeight: FontWeight.w600,
            fontSize: 16));
  }
*/


/*
  static String userFont(BuildContext context) {
    return Provider.of<LanguageViewModel>(context, listen: false).userFont();
  }
*/

/*
  static void showInSnackBar(
      {GlobalKey<ScaffoldState> key,
      String message,
      Color bgColor,
      TextStyle textStyke}) {
    key.currentState.showSnackBar(new SnackBar(
      duration: Duration(seconds: 3),
      elevation: 6.0,
      content: Selector<LanguageViewModel, String>(
          selector: (_, verifyViewModel) => verifyViewModel.userFont(),
          builder: (_, userFont, __) {
            return Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: userFont,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            );
          }),
      backgroundColor: bgColor ?? Colors.redAccent,
    ));
  }
*/

}
