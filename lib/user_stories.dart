import 'package:flutter/material.dart';

class UserStories extends StatelessWidget {

  var images = [
    "https://avatars2.githubusercontent.com/u/3234592?s=460&v=4"
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/p100x100/28168730_1655146264546886_5146093820159815890_n.jpg?_nc_cat=0&oh=bf9215766e8a72541857b4d397c6abd3&oe=5BAE648C",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/p100x100/28168730_1655146264546886_5146093820159815890_n.jpg?_nc_cat=0&oh=bf9215766e8a72541857b4d397c6abd3&oe=5BAE648C",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/p100x100/15622219_10208006740996849_3945146572567260817_n.jpg?_nc_cat=0&oh=a01604450e7ce5fd2e1fb3807cdd093a&oe=5BB0451F",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/c0.17.100.100/p100x100/26903958_10155282139663811_615218039707561495_n.jpg?_nc_cat=0&oh=5be8bfe2e8fce6fee87fa2e7c0f187d5&oe=5BB6DB07",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/c20.0.64.64/p64x64/67851_10151285639410751_492764997_n.jpg?_nc_cat=0&oh=eb0a482adc740509ba89a8cd1bba4267&oe=5BA9F271",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/p100x100/28958864_1261352027342995_1327471436532547584_n.jpg?_nc_cat=0&oh=c8388c39129655c6d041b4b2551238ff&oe=5BDA7F0F",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/c0.29.100.100/p100x100/19396786_1739990842697494_2729600354131554593_n.jpg?_nc_cat=0&oh=79fb353f402fd3234280a9d130f4c880&oe=5BA5E763",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/c0.17.100.100/p100x100/26903958_10155282139663811_615218039707561495_n.jpg?_nc_cat=0&oh=5be8bfe2e8fce6fee87fa2e7c0f187d5&oe=5BB6DB07",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/c20.0.64.64/p64x64/67851_10151285639410751_492764997_n.jpg?_nc_cat=0&oh=eb0a482adc740509ba89a8cd1bba4267&oe=5BA9F271",
    "https://scontent.fagr1-1.fna.fbcdn.net/v/t1.0-1/p64x64/21151423_1239300122883202_2221064380048042381_n.jpg?_nc_cat=0&oh=8958ad114ae08c300dabb10c87105a5e&oe=5BAEED52",
  ];

  var names = [
    "Add",
    "Apoorva",
    "Vincent",
    "Pallavi",
    "Sachin",
    "Praveen",
    "Himanshu",
    "Pallavi",
    "Sachin",
    "Apoorva"
  ];


  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: MediaQuery.of(context).size.height * 0.20,
      child: new Column(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Text(
                    "Stories",
                    style:
                    TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Icon(Icons.play_arrow),
                      new Text(
                        "Stories",
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  )
                ]),
          ),
          new Expanded(
            child: Container(
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => new Container(
                  alignment: Alignment.topCenter,
                  child: new Column(
                    children: <Widget>[
                      new Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: new Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(images[index])
                                ),
                              ),
                              //margin: const EdgeInsets.symmetric(horizontal: 8.0),
                            ),
                          ),
                          index == 0
                              ? Positioned(
                              right: 10.0,
                              top: 10.0,
                              child: new FractionalTranslation(
                                translation: Offset(0.2, -0.2),
                                child: new CircleAvatar(
                                  backgroundColor: Color(0xff3b5998),
                                  radius: 15.0,
                                  child: new Icon(
                                    Icons.add,
                                    size: 14.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                              : new Container(),
                          index != 0
                              ? Positioned(
                            right: 10.0,
                            top: 10.0,
                            child: new FractionalTranslation(
                              translation: Offset(0.2, 1.2),
                              child: new CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.0,
                                child: new Container(
                                  width: 26.0,
                                  height: 26.0,
                                  decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(images[index]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                              : new Container()
                        ],
                      ),

                      Text(
                          names[index],
                        style: TextStyle(
                          fontSize: 12.0
                        ),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

    
    