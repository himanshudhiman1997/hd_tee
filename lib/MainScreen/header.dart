import 'package:flutter/material.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';
import 'package:hd_tee/common_utils/values/strings.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextViewField(
                    text: Strings.companyName.toUpperCase(),
                    textColor: Colors.white,
                    textSize: 18),
                Icon(Icons.favorite),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          height: 1,
        )
      ],
    );
  }
}
