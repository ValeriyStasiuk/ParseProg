// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart'
    show BuildContext, Colors, Column, Key, Scaffold, StatelessWidget, Widget;
import 'package:flutter/widgets.dart';
import 'package:webpage/widgets/call_to_action/call_to_action.dart';
import 'package:webpage/widgets/navigation_bar/centered_view/centered_view.dart';
import 'package:webpage/widgets/navigation_bar/navigation_bar.dart';
import 'package:webpage/widgets/details/details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
            child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
                child: Row(children: <Widget>[
              Details(),
              Expanded(
                child: Center(
                  child: CallToAction('Приєднатись'),
                ),
              ),
            ]))
          ],
        )));
  }
}
