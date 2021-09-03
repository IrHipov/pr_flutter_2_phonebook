import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/colors.dart';

class IconButtonWidget extends StatelessWidget {
  late VoidCallback _onClick;
  late Color _color;
  late Color _iconColor;
  late Icon _icon;
  late double _size;

  IconButtonWidget(
      {Color? color,
      VoidCallback? onClick,
      Icon? icon,
      double? size,
      Color? iconColor}) {
    _onClick = onClick != null ? onClick : () => {};
    _color = color != null ? color : AppColors.main;
    _iconColor = iconColor != null ? iconColor : Colors.white;
    _icon = icon != null ? icon : Icon(Icons.arrow_back_ios);
    _size = size != null ? size : 50;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: _color,
          width: _size,
          height: _size,
          child: IconButton(
            icon: _icon,
            color: _iconColor,
            onPressed: _onClick,
          ),
        ));
  }
}
