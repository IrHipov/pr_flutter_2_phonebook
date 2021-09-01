import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pr_flutter_2_phonebook/pages/contact_info/contact_info_page.dart';
import 'package:pr_flutter_2_phonebook/pages/contacts/contacts_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF000000),
    systemNavigationBarDividerColor: null,
    statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));

  runApp(MaterialApp(
    home: ContactsPage(),
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
    routes: <String, WidgetBuilder>{
      '/contacts': (BuildContext context) => ContactsPage(),
      '/contact-info': (BuildContext context) => ContactInfoPage(),
    },
  ));
}
