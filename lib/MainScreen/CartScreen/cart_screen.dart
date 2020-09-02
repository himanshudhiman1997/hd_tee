import 'package:flutter/material.dart';
import 'package:hd_tee/MainScreen/CartScreen/cart_item.dart';
import 'package:hd_tee/MainScreen/header.dart';
import 'package:hd_tee/common_utils/components/measure_size.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';
import 'package:hd_tee/common_utils/values/palettes.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CartItem(),
            CartItem(),
            Divider(
              color: Colors.grey,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width * 0.6,
                    child: TextField(
                      decoration:
                          InputDecoration(hintText: 'Enter the coupon code'),
                    ),
                  ),
                  Container(
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.black,
                      child: TextViewField(
                        text: 'Apply',
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: TextViewField(
                text: 'Order Summary',
                textSize: 18,
                textColor: Colors.black,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextViewField(
                      text: 'MRP (Includes all taxes)',
                      textColor: Colors.black,
                      textSize: 13,
                    ),
                    TextViewField(
                      text: '₹ 100',
                      textColor: Colors.black,
                      textSize: 13,
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextViewField(
                      text: 'Discount',
                      textColor: Colors.black,
                      textSize: 13,
                    ),
                    TextViewField(
                      text: '₹ 0',
                      textColor: Colors.black,
                      textSize: 13,
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextViewField(
                      text: 'Amount Payable',
                      textColor: Colors.black,
                      textSize: 13,
                    ),
                    TextViewField(
                      text: '₹ 100',
                      textColor: Colors.black,
                      textSize: 13,
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * 0.1, vertical: screenSize.height * 0.03),
              child: MaterialButton(
                onPressed: () {},
                color: Colors.black,
                child: TextViewField(
                  text: 'Select address and Pay',
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
