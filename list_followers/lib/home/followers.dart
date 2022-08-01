import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:list_followers/models/followers.dart';


class FollowersPage extends StatefulWidget{

  static String routeName = '/followers_page';

  @override
  _FollowersPages createState() => _FollowersPages();
}

class _FollowersPages extends State<FollowersPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Followers'),
      ),
      body: Consumer<Followers>(
        builder: (context, value, child) => value.items.isNotEmpty
            ? ListView.builder(
          itemCount: value.items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) =>
              FavoriteItemTile(value.items[index]),
        )
            : Center(
          child: Text('Tambahkan Dulu'),
        ),
      ),
    );
  }
}

class FavoriteItemTile extends StatelessWidget {
  final int itemNo;

  const FavoriteItemTile(
      this.itemNo,
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.accents[itemNo % Colors.accents.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('followers_text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('remove_icon_$itemNo'),
          icon: Icon(Icons.close),
          onPressed: () {
            Provider.of<Followers>(context, listen: false).remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Hapus Followers.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
