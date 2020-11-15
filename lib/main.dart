import 'package:flutter/material.dart';

void main() {
  runApp(TipApp());
}

class TipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _tip = 15;
  int _bill = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextFormField(
                decoration: InputDecoration(labelText: 'Bill'),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    _bill = int.parse(text);
                  });
                }),
            TextFormField(
                initialValue: _tip.toString(),
                decoration: InputDecoration(labelText: 'Tip %'),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    _tip = int.parse(text);
                  });
                }),
            Text('Tip Amount: ${_bill * _tip / 100}'),
            Text('Total Amount:  ${_bill * _tip / 100 + _bill}')
          ],
        ),
      ),
    );
  }
}