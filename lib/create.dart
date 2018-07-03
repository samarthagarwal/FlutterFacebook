import 'package:flutter/material.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 12.0, bottom: 12.0),
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new NetworkImage(
                    "https://avatars2.githubusercontent.com/u/3234592?s=460&v=4"),
              ),
            ),
          ),
          new Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              padding: EdgeInsets.only(left: 16.0, top: 8.0, right: 16.0, bottom: 8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Write something here...",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),

                  new Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "यहाँ कुछ लिखिए...",
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
          new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Icon(const IconData(0xe90e, fontFamily: 'icomoon')),
              ),
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Photo",
                  style: TextStyle(fontSize: 12.0),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
