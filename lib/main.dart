import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'counterExample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Counter("Car"),
    );
  }
}

class Counter extends StatefulWidget {
  final String name;

  Counter(this.name);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Example",style: TextStyle(fontSize: 24),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${widget.name} number",
              style: TextStyle(
                  fontSize: 36,),
            ),
            SizedBox(height: 25,),
            Text(
              "$num",
              style: TextStyle(
                  fontSize: 36, color: num <= 0 ? Colors.red : Colors.green),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      num++;
                      if (num <= 0) {}
                    });
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      num--;
                    });
                  },
                  child: Text(
                    "Subtract",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
