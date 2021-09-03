import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_flutter_2_phonebook/res/colors.dart';

class PersonVWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonVState();
  }
}

class PersonVState extends State<PersonVWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Container(
                  width: 104,
                  height: 104,
                  child: Image.network(
                      'https://html5css.ru/howto/img_avatar2.png'))),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          'Jame Michael',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          '12 Mins ago',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
        )
      ],
    );
  }
}
