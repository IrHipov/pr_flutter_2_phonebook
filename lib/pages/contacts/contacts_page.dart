import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/pages/base_page_widget.dart';
import 'package:pr_flutter_2_phonebook/res/app_colors.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/contacts_app_bar_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/person/vertical_banner/person_v_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/search_field/search_field_widget.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePageWidget(
      appBar: ContactsAppBarWidget(),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 26),
          child: SearchFieldWidget(),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              PersonVWidget(),
              PersonVWidget(),
              PersonVWidget(),
              PersonVWidget(),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 17),
          padding: EdgeInsets.only(left: 17),
          width: MediaQuery.of(context).size.width,
          height: 26,
          color: AppColors.lightBackground,
          child: Row(
              children: [
            Text(
              'A',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ]),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/contact-info');
          },
          child: Text("Go to contact"),
        ),
      ]),
    );
  }
}
