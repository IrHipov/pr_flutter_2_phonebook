import 'package:flutter/material.dart';

import 'colors.dart';

abstract class Styles {
  static OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(32.0),
    borderSide: BorderSide(color: AppColors.main, width: 1.0),
  );

  static OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(32.0),
    borderSide: BorderSide(color: AppColors.error, width: 1.0),
  );
}