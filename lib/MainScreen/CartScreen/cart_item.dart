import 'package:flutter/material.dart';
import 'package:hd_tee/common_utils/components/measure_size.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';
import 'package:hd_tee/common_utils/values/palettes.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

String sampleImageUrl =
    "https://images-na.ssl-images-amazon.com/images/I/41arDG5ZLQL.jpg";

class _CartItemState extends State<CartItem> {
  var parentContainerSize = Size.zero;
  var quantityNumber = 1;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: screenSize.width,
        child: MeasureSize(
          onChange: (size) {
            setState(() {
              parentContainerSize = size;
            });
          },
          child: Card(
            color: Colors.red,
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
                      width: this.parentContainerSize.width * 0.3,
                      height: screenSize.height * 0.2,
                      color: Colors.white,
                      child: Image.network(sampleImageUrl,
                          fit: BoxFit.cover, width: screenSize.height * 0.15)
                      // Center(
                      //     child: Card(
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(5.0),
                      //         ),
                      //         elevation: 10,
                      //         semanticContainer: true,
                      //         clipBehavior: Clip.antiAliasWithSaveLayer,
                      //         child:

                      //             )),
                      ),
                  Container(
                      width: this.parentContainerSize.width * 0.6,
                      height: screenSize.height * 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextViewField(
                              text: 'Pastel Yellow T-Shirt',
                              textColor: Colors.black,
                              textSize: 14,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: TextViewField(
                                text: '₹ 299',
                                textColor: Colors.green,
                                textSize: 18,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: TextViewField(
                                text: 'Size: M',
                                textColor: Colors.black,
                                textSize: 14,
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Row(
                                  children: [
                                    TextViewField(
                                      text: 'Quantity:',
                                      textColor: Colors.black,
                                      textSize: 14,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: GestureDetector(
                                        child: TextViewField(
                                          text: '-',
                                          textColor: Colors.grey,
                                          textSize: 18,
                                        ),
                                        onTap: () {
                                          if (this.quantityNumber > 1) {
                                            setState(() {
                                              this.quantityNumber--;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      child: TextViewField(
                                        text: this.quantityNumber.toString(),
                                        textColor: Colors.black,
                                        textSize: 14,
                                      ),
                                      padding: EdgeInsets.only(left: 10),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: GestureDetector(
                                        child: TextViewField(
                                          text: '+',
                                          textColor: Colors.grey,
                                          textSize: 18,
                                        ),
                                        onTap: () {
                                          if (this.quantityNumber < 10) {
                                            setState(() {
                                              this.quantityNumber++;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )),
                  Container(
                    width: this.parentContainerSize.width * 0.076,
                    height: screenSize.height * 0.2,
                    color: Colors.red,
                    child: Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
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
