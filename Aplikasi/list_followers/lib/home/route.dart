import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:list_followers/models/followers.dart';
import 'package:list_followers/home/home.dart';
import 'package:list_followers/home/followers.dart';
import 'package:list_followers/main.dart';

void main() {
  runApp(home());
}

class home extends StatefulWidget{
  @override
  WidgetApp createState() => WidgetApp();
}

class WidgetApp extends State <home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Followers>(
      create: (context) => Followers(),
      child: MaterialApp(
        title: 'List Favorit',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePages(),
          '/followers_page': (context) => FollowersPage(),
          '/homeawal': (context) => MyHome(),
        },
      ),
    );
  }
}