import 'package:flutter/material.dart';

import 'package:myapp/custom_switch.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        actions: [CustomSwitch()],
      ),
      body: Center(
          child: Text('Contador: $counter',
              style: TextStyle(
                  color: Color.fromARGB(255, 66, 165, 255), fontSize: 40))),
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: Icon(Icons.add, size: 30),
        onPressed: () => setState(() => counter++),
      ),
    );
  }
}
