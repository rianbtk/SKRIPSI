import 'package:flutter/material.dart';
import 'package:list_followers/main.dart';
import 'package:provider/provider.dart';
import 'package:list_followers/models/followers.dart';
import 'package:list_followers/home/followers.dart';

class HomePages extends StatefulWidget{

  static String routeName = '/';

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Followers'),
        actions: <Widget>[
          TextButton.icon(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, FollowersPage.routeName);
            },
            icon: Icon(Icons.favorite_outline_sharp),
            label: Text('Lihat Followers'),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(primary: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, MyApp.routeName);
            },
            icon: Icon(Icons.home_work),
            label: Text('Home'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        cacheExtent: 10.0,
        controller: ScrollController(),
        padding: const EdgeInsets.symmetric(vertical: 2),
        itemBuilder: (context, index) => ItemTile(index),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;
  const ItemTile(
      this.itemNo,
      );

  @override
  Widget build(BuildContext context) {
    var followersList = Provider.of<Followers>(context);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.accents[itemNo % Colors.accents.length],
        ),
        title: Text(
          'List Item $itemNo',
          key: Key('text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('icon_$itemNo'),
          icon: followersList.items.contains(itemNo)
              ? Icon(Icons.verified)
              : Icon(Icons.verified_outlined),
          onPressed: () {
            !followersList.items.contains(itemNo)
                ? followersList.add(itemNo)
                : followersList.remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(followersList.items.contains(itemNo)
                    ? 'Tambah ke Followers.'
                    : 'Batal Ditambahkan.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
