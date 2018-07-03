import 'package:flutter/material.dart';

class FacebookPostCard extends StatelessWidget {

  final image, content, name, time, likes, comments, shares;

  FacebookPostCard({
    this.image, this.content, this.name, this.time, this.likes, this.comments, this.shares
  });

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              child: new Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    image: new NetworkImage(image),
                  ),
                ),
              ),
            ),
            title: new Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Row(
              children: [
                new Text(time),
                new Icon(
                  Icons.public,
                  size: 15.0,
                )
              ],
            ),
            trailing: new Icon(Icons.more_horiz),
          ),
          ListTile(
            title: Text(content),
          ),
          Container(
            padding: new EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  children: <Widget>[

                    new CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Color(0xff3b5998),
                      child: new Icon(Icons.thumb_up, size: 12.0, color: Colors.white, ), ),

                    new CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.red,
                      child: new Icon(IconData(0xe9da, fontFamily: 'icomoon'), size: 12.0, color: Colors.white, ), ),

                    new Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.0,
                          horizontal: 8.0
                      ),
                      child: new Text(likes),
                    ),
                  ],
                ),
                new Text(comments + " comments · " + shares + " share"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
