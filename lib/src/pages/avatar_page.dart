import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://avatars3.githubusercontent.com/u/36550503?s=400&u=82ca522a3db817fc760c7300275d4106fb7849c7&v=4"),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text("SL"),
              backgroundColor: Colors.brown,
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://avatars3.githubusercontent.com/u/36550503?s=400&u=82ca522a3db817fc760c7300275d4106fb7849c7&v=4"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration( milliseconds: 200),
        ),
      )
    );
  }
}
