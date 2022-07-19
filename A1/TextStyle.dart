import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Followers',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Documentation'),
          ),
          //Text//
          body: Column(
            children: <Widget> [
              const SizedBox(height:20),
              Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                        text: 'Flutter',
                        style: TextStyle(fontSize: 25,color: Colors.blue)
                    )
                  ],
                ),
              ),
              const SizedBox(height:20),
              Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                        text: '       Flutter was developed by Google which is a multiplatform open source framework with one programming code base, the Dart language. '
                        ,style: TextStyle(fontSize: 15,color: Colors.black )
                    ),
                    TextSpan(
                        text: '   Flutter provides UI and Widgets that are easy to use in building multi-platform applications efficiently because they can be used on various platforms such as iOS, Android, Desktop and Web. This convenience exists because Flutter is an SDK that can certainly be used across platforms such as rendering engines, Widgets line, API, and command-line tools'
                        ,style: TextStyle(fontSize: 15,color: Colors.black )
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}