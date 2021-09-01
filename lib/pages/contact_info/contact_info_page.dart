import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Contact info"),
          ],
        ),
      ),
    );
  }
}
