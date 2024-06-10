import 'package:flutter/material.dart';
import 'package:clean_code/clean_code.dart'; // Import paket clean_code

void main() {
  runApp(MaterialApp(home: CleanCode()));
}

class CleanCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clean Code Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: elevatedNoRadius,
            onPressed: () {},
            child: Text('Tombol Tanpa Radius'),
          ),
          sy(20),
          sx(20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text("noRadius"),
            ),
          )
        ],
      ),
    );
  }
}
