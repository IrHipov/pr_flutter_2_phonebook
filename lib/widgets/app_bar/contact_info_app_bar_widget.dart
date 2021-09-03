import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/colors.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/base_app_bar_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/button/icon_button_widget.dart';

class ContactInfoAppBarWidget extends StatelessWidget {
  void onClickEdit() {
    print("edit");
  }

  void onClickBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return BaseAppBarWidget(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
              padding: EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1, color: AppColors.whiteMain)),
              width: 40,
              height: 40,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: AppColors.whiteMain,
                onPressed: () => onClickBack(context),
              ))),
      IconButtonWidget(
        color: AppColors.main,
        size: 40,
        icon: Icon(Icons.edit_rounded),
        onClick: onClickEdit,
      ),
    ]);
  }
}
