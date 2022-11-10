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

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
   
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
