import 'package:flutter/cupertino.dart';

abstract class BaseFormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BaseFormState();
  }
}

class BaseFormState extends State<BaseFormWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
      child: Column(
        children: [

        ],
      ),
    ));
  }
}
