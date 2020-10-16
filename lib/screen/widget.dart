import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sehateruz_app/public_function/data.dart';
import 'package:sehateruz_app/public_function/style.dart';
import 'package:sehateruz_app/screen/detail.dart';

// ignore: camel_case_types
class topWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Monday, 30 Feb", style: secondaryStyle,),
        SizedBox(height: 20,),
        RichText(
            text: TextSpan(
              text: 'Hi, ',
              style: TextStyle(color: Color(0xFF495064), fontSize: 30, fontFamily: 'Round',),
              children: <TextSpan>[
                TextSpan(
                    text: 'Ahsan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue[400], fontFamily: 'Round',)),
                TextSpan(text: '-sama !', style: TextStyle(color: Color(0xFF495064), fontFamily: 'Round',)),
      ],
    ),
    ),
        SizedBox(height: 10),
        Text('Sehat - sehat ya !', style: thirdStyle,)

      ],
    );
  }
}





// ignore: camel_case_types
class carouselWidget extends StatefulWidget {
  @override
  _carouselWidgetState createState() => _carouselWidgetState();
}

// ignore: camel_case_types
class _carouselWidgetState extends State<carouselWidget> {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('   Top Doctor', style: topGlobalTitle,),
        Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 300,
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: gambarCarousel.length,
              itemBuilder: (context, index) {
                final title = namaCarousel[index].toString();
                final images = gambarCarousel[index].toString();

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child:
                      Container(
                        height: 400,
                        width: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.blue.withOpacity(0.6), BlendMode.multiply),
                          image: AssetImage(images),
                          fit: BoxFit.cover
                        )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(title, style: topGlobal,),
                            ),
                          ],
                        ),
                      ),
                );
              },
          ),
        ),
      ],
    );
  }
}






// ignore: camel_case_types
class articlesHealth extends StatefulWidget {
  @override
  _articlesHealthState createState() => _articlesHealthState();
}

// ignore: camel_case_types
class _articlesHealthState extends State<articlesHealth> {

  List<DataKesehatan> _dataKesehatan = List<DataKesehatan>();


  @override
  void initState() {
    _dataKesehatan = DataKesehatan().createKesehatanList();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Artikel Terkini', style: fourthStyle,),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
            itemCount: _dataKesehatan.length,
            itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width - 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(_dataKesehatan[index].title,
                              overflow: TextOverflow.ellipsis,
                              style: titleStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text(_dataKesehatan[index].subTitle,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => detailPage(
                              itemTitle: _dataKesehatan[index].title,
                              itemArticles: _dataKesehatan[index].subTitle,
                            )));
              },
            );
          },
        )

      ],
    );
  }
}









