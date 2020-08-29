import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hd_tee/MainScreen/header.dart';
import 'package:hd_tee/common_utils/components/textview_field.dart';
import 'package:hd_tee/common_utils/values/strings.dart';

class HomeScreen extends StatefulWidget {
  final Size screenSize;

  const HomeScreen({Key key, this.screenSize}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<NetworkImage> imgList1 = [
  NetworkImage(
      'https://images-na.ssl-images-amazon.com/images/I/41arDG5ZLQL.jpg'),
  NetworkImage(
      'https://img.looksgud.com/upload/item-image/215/4mjd/4mjd-bewakoof-workout-harder-full-sleeve-t-shirts_500x500_0.jpg'),
  NetworkImage(
      'https://n2.sdlcdn.com/imgs/a/a/v/TEE021_GoldenYellow_S_M_1_2x-5f31f.jpg'),
  NetworkImage(
      'https://images.bewakoof.com/t320/win-anyhow-half-sleeve-t-shirt-men-s-printed-t-shirts-274865-1593509311.jpg'),
  NetworkImage(
      'https://images-na.ssl-images-amazon.com/images/I/81fdk6RzXTL._UY550_.jpg')
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ))
    .toList();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Header(),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: imageSliders,
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: widget.screenSize.height * 0.03,
                  bottom: widget.screenSize.height * 0.02),
              child: Center(
                child: TextViewField(
                  text: Strings.browseNGet,
                  textSize: 14,
                ),
              )),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: GridView.count(
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  childAspectRatio: widget.screenSize.width *
                      0.5 /
                      widget.screenSize.height *
                      2.6,
                  children: imgList1
                      .map(
                        (img) => Container(child: LayoutBuilder(
                          builder:
                              (BuildContext ctx, BoxConstraints constraint) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height:
                                      MediaQuery.of(ctx).size.height * 0.317,
                                  width: MediaQuery.of(ctx).size.width,
                                  child: Card(
                                    elevation: 5,
                                    semanticContainer: true,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(
                                      image: img,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(
                                    'Pastel Yellow T-Shirt',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2),
                                  child: Text(r'Price: $100'),
                                )
                              ],
                            );
                          },
                        )),
                      )
                      .toList()),
            ),
          )
        ],
      ),
    );
  }
}
