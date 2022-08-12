//Project main purposes:
//1.Using card
//2.Changing Flutter Icon
//3.Downloading and Using Different Font
//4.Removing DebugBanner
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Using Card Instead of Button'),
      debugShowCheckedModeBanner: false,//removing DebugBanner
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              width: 170,
              height: 170,
              child: Image.asset('images/HotDaddy.jpg'),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Sung Jin Woo',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Satisfy"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                'Shadow Mornah',
                style: TextStyle(fontSize: 24,fontFamily: "Satisfy"),
                
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(20, 40, 20, 17),
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.deepPurpleAccent.withOpacity(0.40),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(17),
                    child: Icon(Icons.sensor_occupied_sharp),
                  ),
                   Text(
                    "Korea's 10th ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'S',
                    style: TextStyle(fontSize:24 ,color: Colors.amberAccent, fontWeight:FontWeight.bold ),
                  ),
                   Text(
                    '-Rank Hunter',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.all(17),
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.deepPurpleAccent.withOpacity(0.40),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.work),
                  ),
                  Text(
                    'AhJin Gulid Master',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
             Card(
              margin: const EdgeInsets.all(17),
              elevation: 7,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.deepPurpleAccent.withOpacity(0.40),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.location_city),
                  ),
                  Text(
                    'AhJin Gulid,Seoul,Korea',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
