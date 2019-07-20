import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Screen(),
      theme: ThemeData.dark(),
    );
  }
}

class Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup name generator"),
        centerTitle: true,
      ),
      body: Words(),
    );
  }
}

class Words extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordpair = WordPair.random();

    return Center(
        //child: Text("Random: ${wordpair.asPascalCase}"),
        child: Text("Random: ${wordpair.asPascalCase}"),
      );
  }
}