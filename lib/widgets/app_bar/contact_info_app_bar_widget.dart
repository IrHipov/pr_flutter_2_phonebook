import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/app_colors.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/base_app_bar_widget.dart';

class ContactInfoAppBarWidget extends StatelessWidget {
  void onClickEdit() {
    print("edit");
  }

  void onClickBack(BuildContext context){
    Navigator.pop(context);
  }
  
  @override
  Widget build(BuildContext context) {
    print("333");
    return BaseAppBarWidget(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
              padding: EdgeInsets.only(left: 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border:
                      Border.all(width: 1, color: AppColors.whiteMain)),
              width: 40,
              height: 40,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: AppColors.whiteMain,
                onPressed: () => onClickBack(context),
              ))),
      ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: AppColors.main,
            width: 40,
            height: 40,
            child: IconButton(
              icon: const Icon(Icons.edit_rounded),
              color: Colors.white,
              onPressed: onClickEdit,
            ),
          )),
    ]);
  }
}
