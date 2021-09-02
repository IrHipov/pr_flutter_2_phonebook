import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/app_colors.dart';

class SearchFieldWidget extends StatelessWidget {
  InputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none);

  TextStyle textStyle = TextStyle(
      color: AppColors.dartBackground
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        style: textStyle,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.dartBackground,
          ),
          hintText: 'Search',
          hintStyle: textStyle,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          filled: true,
          fillColor: AppColors.lightBackground,
          errorBorder: inputBorder,
          disabledBorder: inputBorder,
          enabledBorder: inputBorder,
          focusedBorder: inputBorder,
          focusedErrorBorder: inputBorder,
        ));
  }
}
