import 'package:flutter/material.dart';
import 'package:sehateruz_app/screen/widget.dart';

// ignore: camel_case_types
class mainHome extends StatefulWidget {
  @override
  _mainHomeState createState() => _mainHomeState();
}

// ignore: camel_case_types
class _mainHomeState extends State<mainHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.black,),
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text('Home', style: TextStyle(color: Colors.black),),
        ),
        backgroundColor: Color(0x00FFFFFF),
        elevation: 0,
      ),



      body:ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 30),
                child: topWidget(),
              ),
              SizedBox(height: 24,),
              carouselWidget(),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: articlesHealth(),
              ),
            ],
          ),
        ],
      )
    );
  }
}


