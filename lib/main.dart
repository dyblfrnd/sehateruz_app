import 'package:flutter/material.dart';
import 'package:sehateruz_app/public_function/data.dart';
import 'package:sehateruz_app/public_function/style.dart';
import 'package:sehateruz_app/screen/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: screenSplash(),
    );
  }
}

class screenSplash extends StatefulWidget {
  @override
  _screenSplashState createState() => _screenSplashState();
}

class _screenSplashState extends State<screenSplash> {
  var randomItem = (quotes..shuffle()).first;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          alignment: Alignment.center,
          child: new SplashScreen(
            seconds: 5,
            navigateAfterSeconds: mainHome(),
            image: new Image.asset("images/mental.png"),
            photoSize: 100.0,
            loaderColor: Colors.blue.withOpacity(0.05),
            loadingText: Text(
              randomItem,
              style: ss,
            ),
            backgroundColor: Colors.blue,
//            gradientBackground: LinearGradient(
//              begin: Alignment.bottomRight,
//              end: Alignment.topLeft,
//              colors: [
//                Colors.blue[700],
//                Colors.blue[500],
//              ],
//            ),
          ),
        ),
      ),
    );
  }
}
