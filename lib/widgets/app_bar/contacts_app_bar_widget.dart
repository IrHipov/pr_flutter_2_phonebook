import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/app_colors.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/base_app_bar_widget.dart';

class ContactsAppBarWidget extends StatelessWidget {
  void onClickEdit() {
    print("edit");
  }

  @override
  Widget build(BuildContext context) {
    print("333");
    return BaseAppBarWidget(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          'https://dt2sdf0db8zob.cloudfront.net/wp-content/uploads/2019/12/9-Best-Online-Avatars-and-How-to-Make-Your-Own-for-Free-image1-5.png',
          height: 40,
          width: 40,
        ),
      ),
      Text(
        "Contacts",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Sofia Pro',
        ),
      ),
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
