import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/pages/base_page_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/contacts_app_bar_widget.dart';
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
