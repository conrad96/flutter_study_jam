import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Words(),
      theme: ThemeData.dark(),
    );
  }
}

class Words extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Words();
  }
}

class _Words extends State<Words>{
  var _string = "Startup";

  void _newword(){
    var word = WordPair.random();
    setState(() {
      _string = word.asPascalCase;  
    });
  }

  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup name generator"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(_string),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: _newword,
      )
    );
  }
}
