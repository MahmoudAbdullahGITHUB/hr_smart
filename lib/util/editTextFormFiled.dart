import 'package:flutter/material.dart';


class CustomEditTextFormFiled {
  Widget MyInputField({
    BuildContext? context,
    String initialValue = "",
    Function(void)? onSaved,
    Function(void)? onChang,
    controller,
    String? hint,
    String? label,
    bool hide = false,
    Icon? prefixIcon,
    Widget? suffixIcon,
    bool enabled = true,
    maxlength,
    onTap,
    readOnly = false,
    Color lableolor = Colors.black54,
    Color hintColor = Colors.black,
    maxLine = 1,
    intiValue,
    TextInputType textInputType = TextInputType.text,
    Function(bool)? onSuffixIconClick,
    final validatorobject,
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
  }) {
    return SizedBox(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: 0.5, right: 1.0, left: 1.0, top: 1.0),
        child: TextFormField(
          initialValue: intiValue,
          controller: controller,
          obscureText: hide,
          // initialValue: initialValue,
          maxLength: maxlength,
          maxLines: maxLine,
          style: Theme.of(context!).textTheme.subtitle2!.copyWith(
                fontSize: 14.0,
                color: Colors.blueGrey,
              ),
          onTap: onTap,
          readOnly: readOnly,
          onSaved: onSaved,
          onChanged: onChang,
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          decoration: new InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor:
                Colors.grey.shade100,
            filled: true,
            contentPadding:
                EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                  color: Colors.grey.shade100, width: 0.5),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.0),
            ),
            hoverColor: Colors.black,
            /*enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: mainColor, width: 1.0),
            ),*/
            /*  disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.0),
            ),*/
            hintText: hint,
            labelText: label,
            labelStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 14.0,
                  color:  Colors.black,
                ),
            hintStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 14.0,
                  color: Colors.blueGrey,
                ),
          ),
          validator: validatorobject,
          keyboardType: textInputType,
          /* style:
          TextStyle(color:enabled ? Colors.black : Colors.white),*/
        ),
      ),
    );
  }
}
