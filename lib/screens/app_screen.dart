// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:webfeed/webfeed.dart';
import 'package:webpage/common/fetch_http_habs.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

List _habsList = [];

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Вітаємо у особистому кабінеті!'),
        //actions: [_getHttpHabs()],
      ),
      body: FutureBuilder<dynamic>(
        future: _getHttpHabs(),
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _habsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Container(
                        child: Column(
                          children: [Text('${_habsList[index].title}')],
                        ),
                      ),
                    );
                  }),
            );
          }
        },
      ),
    ));
  }

  _getHttpHabs() async {
    var response = await fetchHttpHabs('https://habr.com/ru/rss/hubs/all/');
    var chanel = RssFeed.parse(response.body);
    chanel.items?.forEach((element) {
      _habsList.add(element);
    });
  }
}
