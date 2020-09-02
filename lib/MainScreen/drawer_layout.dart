import 'package:flutter/material.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';

class DrawerLayout extends StatefulWidget {
  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Card(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: TextViewField(
                    text: 'Login or Sign up',
                    textColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.history),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextViewField(
                    text: 'My Orders',
                    textColor: Colors.black,
                    textSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextViewField(
                    text: 'Favourites',
                    textColor: Colors.black,
                    textSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.person_outline),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextViewField(
                    text: 'Refer a friend',
                    textColor: Colors.black,
                    textSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.call),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextViewField(
                    text: 'Support',
                    textColor: Colors.black,
                    textSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Row(
              children: [
                Icon(Icons.exit_to_app),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextViewField(
                    text: 'Logout',
                    textColor: Colors.black,
                    textSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: TextViewField(
                text: 'Version 1.0',
                textColor: Colors.black,
                textSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
