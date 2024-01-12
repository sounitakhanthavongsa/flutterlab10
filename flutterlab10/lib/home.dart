import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Layouts',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.cloud_queue), onPressed: () {})
        ],
      ),
      body: _buildbody(),
    );
  }
}

Widget _buildbody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _buildmageheader(),
        SafeArea(
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _builentry(),
                  Divider(),
                  _buildJournalWeather(),
                  Divider(),
                  _buildJournalTags(),
                  Divider(),
                  _buildJournalFooterImages(),
                ],
              )),
        )
      ],
    ),
  );
}

Image _buildmageheader() {
  return Image.asset(
    'assets/images/sc.jpg',
    fit: BoxFit.cover,
  );
}

Column _builentry() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Birthday',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'It’s going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso',
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _buildJournalWeather() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.orange,
          ),
        ],
      ),
      SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '81º Clear',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '4500 San Alpho Drive, Dallas, TX United States',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _buildJournalTags() {
  return Wrap(
    spacing: 8.0,
    children: List.generate(7, (int index) {
      return Chip(
        label: Text(
          'Gift ${index + 1}',
          style: TextStyle(fontSize: 10.0),
        ),
        avatar: Icon(
          Icons.card_giftcard,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _buildJournalFooterImages() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/sc.jpg'),
        radius: 40.0,
      ),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/sc1.jpg'),
        radius: 40.0,
      ),
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/scc.jpg'),
        radius: 40.0,
      ),
      SizedBox(
        width: 100.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.cake),
            Icon(Icons.star_border),
            Icon(Icons.music_note),
            //Icon(Icons.movie),
          ],
        ),
      ),
    ],
  );
}
