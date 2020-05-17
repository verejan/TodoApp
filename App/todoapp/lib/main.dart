import 'package:flutter/material.dart';
import 'package:todoapp/UI/Intray/intray_page.dart';
import 'models/global.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TodoApp Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: MaterialApp(
      color: Colors.blue,
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: Stack(
                children: <Widget>[
                  TabBarView(
              children: [
                new Container(
                  child: IntrayPage(),
                ),
                new Container(
                  color: Colors.green,
                  ),
                new Container(
                  color: Colors.lightGreen,
                ),
              ],
                
            ),
            Container(
              padding: EdgeInsets.only(left:50),
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
                ) ,
                color: Colors.white

                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Intray", style: intrayTitleStyle,),
                Container()
                ],
              ) ,
            ),
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(top: 120, left: MediaQuery.of(context).size.width*0.5-40),
              child: FloatingActionButton(
                child: Icon(Icons.add, size: 60,),
                backgroundColor: redColor,
                onPressed: (){},
              ),
            )
            ]
          ),
          appBar: AppBar(
              elevation: 0,
              title: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
                Tab(
                  icon: new Icon(Icons.add, size: 50,),
                ),
                Tab(
                  icon: new Icon(Icons.perm_identity),
                )
              ],
              labelColor: darkGreyColor,
              unselectedLabelColor: Colors.blue,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    ),
    );
  }
}
