import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fver2-1.fna.fbcdn.net/v/t1.0-9/126896085_3587566791321262_920827981011160810_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_ohc=uFkSIzm-oKcAX9tPHHQ&_nc_ht=scontent.fver2-1.fna&oh=89e5b614e08a02e3b745c8ac1dead73b&oe=5FE30B8F'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://scontent.fver2-1.fna.fbcdn.net/v/t1.0-9/126896085_3587566791321262_920827981011160810_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_ohc=uFkSIzm-oKcAX9tPHHQ&_nc_ht=scontent.fver2-1.fna&oh=89e5b614e08a02e3b745c8ac1dead73b&oe=5FE30B8F')),
      ),
    );
  }
}
