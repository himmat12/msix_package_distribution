import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Counter value:"),
            SizedBox(height: 20),
            Text('$count'),
            Text('$count'),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('Increment')),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Text('Decrement'))
          ],
        ),
      ),
    );
  }
}
