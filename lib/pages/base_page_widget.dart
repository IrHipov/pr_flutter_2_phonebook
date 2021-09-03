import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasePageWidget extends StatelessWidget {
  late Widget _child;
  late Widget? _appBar;

  BasePageWidget({Widget? appBar, required Widget child}) {
    this._child = child;
    this._appBar = appBar;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [_child];

    if (_appBar != null) {
      content.insert(0, _appBar!);
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: content,
          ),
        ),
      ),
    );
  }
}
