import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/pages/base_page_widget.dart';
import 'package:pr_flutter_2_phonebook/widgets/app_bar/contact_info_app_bar_widget.dart';

class ContactInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasePageWidget(
      appBar: ContactInfoAppBarWidget(),
      child: Center(
        child: Text("Contact"),
      ),
    );
  }
}
