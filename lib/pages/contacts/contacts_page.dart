import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/pages/base_page_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/contacts_app_bar_widget.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePageWidget(
      appBar: ContactsAppBarWidget(),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/contact-info');
          },
          child: Text("Go to contact"),
        ),
      ),
    );
  }
}
