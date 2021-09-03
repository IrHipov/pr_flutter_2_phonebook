import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/pages/base_page_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/forms/login/login_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePageWidget(
      child: Container(
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: MediaQuery.of(context).size.height * 0.33),
        child: LoginForm(),
      ),
    );
  }
}
