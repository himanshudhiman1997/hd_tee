import 'package:flutter/material.dart';
import 'package:hd_tee/HomeScreen/header.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Header(),
          Center(
            child: Text('More'),
          )
        ],
      ),
    );
  }
}