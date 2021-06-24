import 'package:flutter/material.dart';

import 'fields/fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextFields'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        right: 20,
      ),
      child: Column(
        children: [
          Email(),
          SizedBox(
            height: 20,
          ),
          Password(),
          TextButton(
            onPressed: () {},
            child: Text('submit'),
          ),
        ],
      ),
    );
  }
}
