import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new DefaultTabController(
        length: 1,
        child: new TabBarView(children: [
          new Column(children: [
            new ExpansionTile(title: const Text('Expand me'), children: [
              new Container(
                  color: Colors.green,
                  constraints: const BoxConstraints(minHeight: 250.0)),
            ]),
            new Flexible(
              child: new Stack(children: [
                new Container(
                  color: Colors.yellow,
                  child: new ListView.builder(
                    reverse: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => new Container(
                          constraints: const BoxConstraints(minHeight: 150.0),
                          child: new Text('Item $index'),
                        ),
                  ),
                ),
              ]),
            ),
          ]),
        ]),
      ),
    );
  }
}
