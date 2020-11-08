import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
           _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text("Este es el texto de la tarjeta 1"),
              subtitle: Text(
                  "Este es el textodel subtçítulo de la tarjeta 1 y vamos a ver qué pasa"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text("Cancelar"),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {},
                )
              ],
            )
          ],
        ));
  }

  Widget _cardTipo2() {
    final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(
                "https://www.lareserva.com/sites/default/files/styles/article_image/public/field/image/pradefull.jpg?itok=Pjt60KBB "),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover, 
          ),
          /* Image(
          image:  NetworkImage("https://www.lareserva.com/sites/default/files/styles/article_image/public/field/image/pradefull.jpg?itok=Pjt60KBB"),
          ), */
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text("No tengo ni idea de qué poner. "))
        ],
      ),
    );

    return Container(
       
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
             color: Colors.black26,
             blurRadius: 10.0,
             spreadRadius: 1.0,
             offset: Offset(2.0, 10.0), 
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
