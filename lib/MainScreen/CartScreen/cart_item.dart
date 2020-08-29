import 'package:flutter/material.dart';
import 'package:hd_tee/common_utils/components/measure_size.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';
import 'package:hd_tee/common_utils/values/palettes.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  var parentContainerSize = Size.zero;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MeasureSize(
        onChange: (size) {
          setState(() {
            parentContainerSize = size;
          });
        },
        child: Container(
          width: screenSize.width,
          child: Card(
            elevation: 10,
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Container(
              child: Row(
                children: [
                  Container(
                    width: screenSize.width * 0.3,
                    color: Colors.red,
                    child: TextViewField(
                      text: 'H\ni\nm\na\nn\ns\nh\nu',
                      textColor: Colors.black,
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.6,
                    color: Colors.yellow,
                    child: TextViewField(
                      text: 'H\ni\nm\na\nn\ns\nh\nu',
                      textColor: Colors.black,
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.08,
                    color: Colors.green,
                    child: TextViewField(
                      text: 'H\ni\nm\na\nn\ns\nh\nu',
                      textColor: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
