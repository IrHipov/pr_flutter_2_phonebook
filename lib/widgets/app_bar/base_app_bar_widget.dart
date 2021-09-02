import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseAppBarWidget extends StatelessWidget {
  late List<Widget> _children;

  BaseAppBarWidget({required List<Widget> children}) {
    this._children = children;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _children,
          ),
        ));
  }
}
