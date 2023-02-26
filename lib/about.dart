import 'package:flutter/material.dart';
import 'aboutpage.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('THOBOR'),
        ),
        body: MyApp(),
      ),  
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({Key, key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 25),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ListView.builder(
                itemCount: about.length,
                itemBuilder: (BuildContext context, int index) {
                  return murim(context,index);
                }),
          ),
        ],
      ),
    );
  }
}
