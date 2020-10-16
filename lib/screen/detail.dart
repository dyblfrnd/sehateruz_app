import 'package:flutter/material.dart';
import 'package:sehateruz_app/public_function/style.dart';

// ignore: camel_case_types
class detailPage extends StatelessWidget {
  final String itemTitle;
  final String itemArticles;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  const detailPage({
    Key key,
    this.itemTitle,
    this.itemArticles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x00FFFFFF),
        leading: FlatButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            goBack(context);
          },
        ),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Text(
            itemTitle,
            style: thirdStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              itemArticles,
              style: articlesFont,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
