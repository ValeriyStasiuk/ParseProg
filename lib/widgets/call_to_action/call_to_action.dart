// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text('Приєднатись'),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            primary: Color.fromRGBO(122, 39, 234, 0.8),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            textStyle: TextStyle()));
  }
}
