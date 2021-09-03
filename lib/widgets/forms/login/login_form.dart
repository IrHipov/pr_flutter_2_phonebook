import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/widgets/forms/base_form.dart';

class LoginForm extends BaseFormWidget {
  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();

  @override
  void onForgotPass() {
    // TODO: implement onForgotPass
  }

  @override
  void onSubmit() {
    // TODO: implement onSubmit
  }

  @override
  Widget getFormFields(BuildContext context) {
    return Column(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10),
            child: Text(
              'Email',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextFormField(
            // onChanged: onChange,
            // controller: widget.fieldController,
            // validator: widget.validator,
            style: TextStyle(),
            decoration: decoration,
          ),
        ],
      ),
      SizedBox(height: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 10),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextFormField(
            // onChanged: onChange,
            // controller: widget.fieldController,
            // validator: widget.validator,
            style: TextStyle(),
            decoration: decoration,
          ),
        ],
      )
    ]);
    ;
  }
}
