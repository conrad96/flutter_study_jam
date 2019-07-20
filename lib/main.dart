import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scroll(),
      theme: ThemeData.dark(),
    );
  }
}
class Scroll extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Scroll();
  }
}
class _Scroll extends State<Scroll>{
  final List<WordPair> _suggestions = <WordPair>[];

  Widget _wordBuilder(){
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemBuilder: (BuildContext _context, int i){
        if(i.isEven){
          return Divider();
        }
        final int index = i ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      }
    );
  }

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(pair.asPascalCase, style: TextStyle(fontSize: 20.0)),
    );
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup name generator"),
        centerTitle: true,
      ),
      body: _wordBuilder(),
    );
  }
}
