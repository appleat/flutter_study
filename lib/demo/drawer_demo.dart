import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("HEAD"),
          //   decoration: BoxDecoration(color: Colors.grey[100]),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'Appleat',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('appleat@mysite.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img1.doubanio.com/view/celebrity/s_ratio_celebrity/public/p5857.webp'),
            ),
            decoration: BoxDecoration(
                color: Colors.green[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://img3.doubanio.com/view/photo/l/public/p1344584803.webp'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.green[400].withOpacity(0.6),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              size: 22.0,
              color: Colors.black26,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              size: 22.0,
              color: Colors.black26,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'call',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.call,
              size: 22.0,
              color: Colors.black26,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'email',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.email,
              size: 22.0,
              color: Colors.black26,
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
