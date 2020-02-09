import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ozjasz Goldberg',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Ozjasz Goldberg'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  //  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
String _sentencesData (int id) {
  switch (id) {
    case 0:
      {
        return "Mafie, służby i loże.";
      }
    case 1:
      {
        return "Kościół, szkoła, strzelnica, mennica.";
      }
    case 2:
      {
        return "W demokracji zbawiony będzie ten, kto wyznaje religię tolerancji i sortuje śmieci.";
      }
    case 3:
      {
        return "Wszędzie dobrze, ale w Kondominium rosyjsko-niemieckim pod żydowskim zarządem powierniczym - najlepiej !";
      }
    case 4:
      {
        return "Daj Boże !!!";
      }
    case 5: {
      return "Bynajmniej, nie są to michałki.";
    }
    case 6: {
      return "Króluj nam Chryste na Podlasiu - i wszędzie !";
  }
  }
}
class _MyHomePageState extends State<MyHomePage> {
  String braunSays = "Szczęść Boże !!!";
  var braunimg = 'assets/braunSilent1.jpeg';
  void _grzegorzMow() {
    setState(() {
// Zbuduj generator wypowiedzi Brauna   <-----
   // String sentence1 =
  Random rnd = new Random();
  int rndint = rnd.nextInt(6);
  braunSays = _sentencesData(rndint);
         // braunSays = "Wszędzie dobrze, ale w Kondominium rosyjsko-niemieckim pod żydowskim zarządem powierniczym - najlepiej !";

      braunimg = 'assets/braunSaying1.jpg';
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from th e MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           // Text(
            //  'Grzegorz Braun mówi:',
          //  ),
            Text(
              '$braunSays',
              //style: Theme.of(context).textTheme.display1,
            ),
            Image(
              width:150,
              //height: 270,
              image: AssetImage(
                  braunimg,
              )
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,


              children: <Widget>[
                RaisedButton(

                  onPressed: _grzegorzMow,
                  child: Text("Niechaj przemówi !"),

                )
              ],
            )
          ],

        ),
      ),

      floatingActionButton: FloatingActionButton(
        //onPressed: ,
        tooltip: 'Menu',
        child: Icon(Icons.account_box)
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
