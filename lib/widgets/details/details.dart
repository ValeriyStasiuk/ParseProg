// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'KPNU COMPANY. \nDISCOVER WITH US',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Завдяки нашому веб-ресурсу ви зможете отримувати усю інформацію про тарифи на одному сайті.',
            style: TextStyle(
              fontSize: 18,
              height: 1.7,
            ),
          )
        ],
      ),
    );
  }
}
