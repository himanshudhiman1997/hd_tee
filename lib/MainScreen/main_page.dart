import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:hd_tee/MainScreen/CartScreen/cart_screen.dart';
import 'package:hd_tee/MainScreen/home_screen.dart';
import 'package:hd_tee/MainScreen/more_screen.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';
import 'package:hd_tee/common_utils/values/strings.dart';
import 'package:hd_tee/common_utils/values/palettes.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    TextViewField(text: 'Home', textColor: Colors.black, textSize: 20),
    TextViewField(text: 'Cart', textColor: Colors.black, textSize: 20),
    TextViewField(text: 'More', textColor: Colors.black, textSize: 20)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.black);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: this._selectedIndex == 0 ? HomeScreen(screenSize: screenSize) : this._selectedIndex == 1 ? CartScreen() : MoreScreen()
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: TextViewField(
                  text: 'Home', textColor: Colors.white, textSize: 15)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              title: TextViewField(
                  text: 'Cart', textColor: Colors.white, textSize: 15)),
          BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: TextViewField(
                  text: 'More', textColor: Colors.white, textSize: 15))
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
