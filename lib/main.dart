import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      home: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.indigo,
            title: Text("Counter"),
            centerTitle: true,
          ),
          body: Center(
            child: MyHomePage(
              title: '',
            ),
          )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap "-" to decrement',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                // color: Colors.white,
                width: 140,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      iconSize: 20,
                      alignment: Alignment.centerLeft,
                      onPressed: _decrementCounter,
                      tooltip: 'Decrement',
                      icon: Icon(Icons.minimize),
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    IconButton(
                      iconSize: 20,
                      alignment: Alignment.centerRight,
                      onPressed: _incrementCounter,
                      tooltip: 'Increment',
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              Text(
                'Tap "+" to increment',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
