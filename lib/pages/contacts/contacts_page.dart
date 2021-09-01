import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact-info');
            },
            child: Text("Go to contact"),
          ),
        ),
      ),
    );
  }
}
