// Flutter code sample for Scaffold

// This example shows a [Scaffold] with a [body] and [FloatingActionButton].
// The [body] is a [Text] placed in a [Center] in order to center the text
// within the [Scaffold]. The [FloatingActionButton] is connected to a
// callback that increments a counter.
//
// ![The Scaffold has a white background with a blue AppBar at the top. A blue FloatingActionButton is positioned at the bottom right corner of the Scaffold.](https://flutter.github.io/assets-for-api-docs/assets/material/scaffold.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class DottedText extends Text {
  const DottedText(
    String data, {
    Key key,
    TextStyle style,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
  }) : super(
          '\u2022 $data',
          key: key,
          style: style,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
        );
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff022057),
          flexibleSpace: FlexibleSpaceBar(
            title: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "The Cliff House",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: "2345 N.Main St, Hometown CA",
                  style: TextStyle(color: Colors.white),
                )
              ]),
            ),
            titlePadding: EdgeInsets.only(left: 20, bottom: 10),
          )),
      body: Center(
          child: ConstrainedBox(
              constraints: new BoxConstraints(
                maxWidth: 600.0,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    new Image.asset("assets/images/salmon.jpg"),
                    new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5),
                                DottedText(
                                  "2 Plates Pacific King Salmon",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                new Text(
                                    "Grilled w/ Ginger Soy Glaze, Bell Pepper & Mango Relish")
                              ]),
                          SizedBox(height: 5),
                          new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DottedText(
                                  "1 Bottle 2016 Le Creme Chardonnay",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                          SizedBox(height: 5),
                          new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DottedText(
                                  "1 Loaf of Fresh Artisan Bread",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                new Text(
                                    "House baked french bread, fresh from our wood oven")
                              ]),
                          new Container(
                              margin: const EdgeInsets.only(top: 10),
                              color: const Color(0xff42914A),
                              height: 48.0,
                              child: new FractionallySizedBox(
                                  widthFactor: 1,
                                  child: new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("Grouped Bundle Saving",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white))
                                      ])))
                        ]),
                  ]))),
    );
  }
}
