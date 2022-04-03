// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {

  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    home: HomePage()
  ));

}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Contador")
      ),
      body: Center(
        child: Text(
          "Contador\n$contador", 
          textAlign: TextAlign.center
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              incrementar();
            },
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              decrementar();
            },
          ),
        ]
      )
    );

  }
}

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     incrementar();
      //   },
      // )

// Icon(Icons.add)

// void main() {
//   // print("HELLO WORLD");

//   runApp(MaterialApp(
//     theme: ThemeData(
//       primarySwatch: Colors.purple
//     ),
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text("Meu primeiro App")
//       ),
//       body: Container(
//         color: Colors.purple,
//         child: Center(
//           child: Container(
//             height: 200,
//             width: 200,
//             color: Colors.green,
//           )
//         )
//       )
//     )
//   ));

// }