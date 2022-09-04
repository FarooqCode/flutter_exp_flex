import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Expanded Flex Widget',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Exp Flex'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            color: Colors.red,
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'Container',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: 100,
              color: Colors.yellow,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Expanded',
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Container(
              height: 100,
              color: Colors.greenAccent,
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Flexible',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
