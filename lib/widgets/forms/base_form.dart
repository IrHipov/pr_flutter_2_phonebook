import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/colors.dart';
import 'package:pr_flutter_2_phonebook/res/styles.dart';
import 'package:pr_flutter_2_phonebook/widgets/button/icon_button_widget.dart';

abstract class BaseFormWidget extends StatefulWidget {
  late Map fields;
  late String buttonLabel;

  InputDecoration decoration = InputDecoration(
    hintText: '',
    errorBorder: Styles.errorOutlineInputBorder,
    contentPadding: EdgeInsets.symmetric(horizontal: 20),
    disabledBorder: Styles.outlineInputBorder,
    enabledBorder: Styles.outlineInputBorder,
    focusedBorder: Styles.outlineInputBorder,
    focusedErrorBorder: Styles.outlineInputBorder,
  );

  void onForgotPass();

  void onSubmit();

  Widget getFormFields(BuildContext context);

  @override
  State<StatefulWidget> createState() {
    return BaseFormState();
  }
}

class BaseFormState extends State<BaseFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      // child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            widget.getFormFields(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: widget.onForgotPass,
                    child: Text('Forgot password?')),
                IconButtonWidget(
                  color: AppColors.main,
                  size: 50,
                  icon: Icon(Icons.arrow_forward_ios),
                  onClick: widget.onSubmit,
                )
              ],
            )
          ],
        ),
      // ),
    );
  }
}
