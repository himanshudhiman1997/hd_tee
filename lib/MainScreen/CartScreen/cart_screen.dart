import 'package:flutter/material.dart';
import 'package:hd_tee/MainScreen/CartScreen/cart_item.dart';
import 'package:hd_tee/MainScreen/header.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Header(),
          Center(
            child: CartItem(),
          )
        ],
      ),
    );
  }
}
