import 'package:flutter/material.dart';
import 'package:list_followers/home/Flutter.dart';

//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext contex) {
//     return MaterialApp(
//       title: "List Followers",
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: firstscreen(),
//     );
//   }
// }

// b2 state //

class firstscreen extends StatefulWidget{


  @override
  _firstscreenState createState() => _firstscreenState();
}

// b2 state //

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Documentation",
        ),
      ),

      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Flutter',
                      style: TextStyle(fontSize: 25, color: Colors.blue))
                ],
              ),
            ),

            // A2 IMAGE //
            Container(
              color: Colors.transparent,
              width: 400,
              height: 200,
              padding: EdgeInsets.all(3),
              child: Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9NNoU91dgcnpfjiH1WXVV9nCu9GvB-7OpUg&usqp=CAU"),
              ),
            ),
            const SizedBox(height: 20),
            // A2 IMAGE //

            //A1 Text Span //
            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Flutter dikembangkan oleh Google yang merupakan framework open source multiplatform dengan satu basis kode pemrograman yaitu bahasa Dart.',
                      style: TextStyle(fontSize: 15, color: Colors.red)),
                  TextSpan(
                      text:
                          'Flutter menyediakan UI dan Widgets yang mudah digunakan dalam membangun aplikasi multi-platform secara efisien karena dapat digunakan di berbagai platform seperti iOS, Android, Desktop dan Web, Kemudahan tersebut ada kerena Flutter adalah SDK yang pastinya dapat digunakan di lintas platform misalnya rendering engine, Widgets line, API, dan command-line tools',
                      style: TextStyle(fontSize: 15, color: Colors.blue)),
                ],
              ),
            ),

            // Text Span //
            RichText(
              text: TextSpan(
                  text: 'Daftar Materi Dasar Flutter',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            RichText(
              text: TextSpan(
                children: const <TextSpan>[
                  TextSpan(
                      text: 'Meliputi',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),

            // text span //

            // text style //
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'Text Style',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                const SizedBox(width: 10),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'Route',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                const SizedBox(width: 10),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'Provider',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                const SizedBox(width: 10),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'Text Style',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                const SizedBox(width: 10),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'Container Widgets',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                const SizedBox(width: 10),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Text(
                      'State',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                const SizedBox(width: 10),
              ],
            ),
            // text style //

            // button text //

            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigoAccent),
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back",
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
              ),
            ),

            // buttontext //
          ],
        ),
      ),
    );
  }
}
