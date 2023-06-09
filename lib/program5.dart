import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _length = 1.0;
  double _breadth = 1.0;
  double _height = 1.0;
  double _volume = 1.0;

  void _calculateVolume() {
    setState(() {
      _volume = _length * _breadth * _height;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Length',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Scrollbar(
              child: Slider(
                value: _length,
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$_length',
                onChanged: (value) {
                  setState(() {
                    _length = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Select Breadth',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Scrollbar(
              child: Slider(
                value: _breadth,
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$_breadth',
                onChanged: (value) {
                  setState(() {
                    _breadth = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Select Height',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Scrollbar(
              child: Slider(
                value: _height,
                min: 1.0,
                max: 5.0,
                divisions: 4,
                label: '$_height',
                onChanged: (value) {
                  setState(() {
                    _height = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _calculateVolume,
              child: Text('Show'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Volume: $_volume',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
