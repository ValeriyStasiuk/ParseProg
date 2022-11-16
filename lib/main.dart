// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:webpage/screens/app_screen.dart';
import 'package:webpage/views/home/home_view.dart';
import 'package:webpage/widgets/auth/auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stasiuk Flutter Web Page',
        theme: ThemeData(
            appBarTheme:
                AppBarTheme(backgroundColor: Color.fromRGBO(122, 39, 234, 0.8)),
            primarySwatch: Colors.blue,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeView(),
          '/auth': (context) => AuthWidget(),
          '/appscreen': (conext) => AppScreen(),
        });
  }
}

