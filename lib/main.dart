import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Halsatu(),
    title: "berita terkini",
    routes: <String, WidgetBuilder>{
      '/Halsatu': (BuildContext context) => new Halsatu(),
      '/Haldua': (BuildContext context) => new Haldua(),
    },
  ));
}

class Halsatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 248, 182),
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Center(
          child: new Text(
            "berita terkini",
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: new GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/Haldua');
        },
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Card(
                child: new Column(
                  children: <Widget>[
                    new Icon(
                      Icons.search,
                      size: 50.0,
                    ),
                    new Text("Terbaru"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Haldua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text(
          "berita terbaru blaabla",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new Image(
        image: new NetworkImage(
          "https://media.istockphoto.com/id/1458127472/id/vektor/breaking-news-pembawa-berita-wanita.jpg?s=612x612&w=0&k=20&c=EsnTSuq2cFtxQSJfml7JBURtxK762dQRsTJWhIkg5Hw=",
        ),
      ),
    );
  }
}
