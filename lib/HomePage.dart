import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.child}) : super(key: key);
  final Widget child;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Color PrimaryColor = Color(0xff10961B);

class _MyHomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          title: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: _googlePlayAdapter(),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 6.0,
            onTap: (index){
              setState(() {
                  switch (index){
                    case 0: 
                      PrimaryColor = Colors.blue;
                      break;
                    case 1: 
                      PrimaryColor = Colors.red;
                      break;
                    case 2: 
                      PrimaryColor = Colors.blueAccent;
                      break;
                    case 3: 
                      PrimaryColor = Colors.redAccent;
                      break;
                    case 4: 
                      PrimaryColor = Colors.yellow;
                      break;
                    default:
                  }
              });
            },
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text(
                    'HOME',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _googlePlayAdapter(){
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(Icons.battery_full),
          ),
        ),
        Container(
          child: Text(
            'Google Play',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Container(
          child: IconButton(
            icon: Icon(
              Icons.block,
              color: Colors.blueGrey,
            ),
            onPressed: null,
          ),
        )
      ],
    ),
  );
}