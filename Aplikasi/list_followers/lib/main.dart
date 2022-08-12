import 'package:flutter/material.dart';
import 'package:list_followers/home/flutter.dart';
import 'package:list_followers/home/route.dart';


void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // B2 //
  static String routeName = '/homeawal';
  // B2 //
  @override
  Widget build(BuildContext contex){
    return MaterialApp(
      title: "List Followers",
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}
// B2 //
class MyHome extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}
// B2 STATE //
class _HomePageState extends State<MyHome>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
      ),
      body: Container(
        alignment:  Alignment.center,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
            const SizedBox(height:80),
            Text(
              "Flutter Project",
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontSize: 40.0,
                fontFamily: "Times New Roman",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height:60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigoAccent),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>firstscreen()
                      ),
                      );
                    },
                    child: Text(
                        "Flutter",
                        style:  TextStyle(color: Colors.white, fontSize: 20.0)
                    ),
                  ),
                ),
                const SizedBox(width:20),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigoAccent),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>home()
                      ),
                      );
                    },
                    child: Text(
                        "List Followers",
                        style:  TextStyle(color: Colors.white, fontSize: 20.0)
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height:20),
          ],
        ),
      ),
    );
  }
}