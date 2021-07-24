
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl ="https://avatars.githubusercontent.com/u/64957861?v=4";
    return Drawer(
      child: Container(
       // color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color:Colors.white,),
                accountName: Text("Khushi Jain"),
                accountEmail: Text("khushi.jain0704@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color:Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1,
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color:Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1,
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color:Colors.black,
              ),
              title: Text(
                "Contact Us",
                textScaleFactor: 1,
                ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.creditcard,
                color:Colors.black,
              ),
              title: Text(
                "Terms & Conditions",
                textScaleFactor: 1,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
