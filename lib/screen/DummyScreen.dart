import 'package:flutter/material.dart';

class Dummyscreen extends StatefulWidget {
  const Dummyscreen({super.key});

  @override
  State<Dummyscreen> createState() => _DummyscreenState();
}

class _DummyscreenState extends State<Dummyscreen> {
  @override
  Widget build(BuildContext context) {
    final Screenheight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            height: Screenheight * 0.8,
            width: ScreenWidth * 0.5,
            color: Colors.amber,
            child: Text(
              "Dummmy screen",
              style: TextStyle(fontSize: ScreenWidth * 0.09),
            ),
          ),
        ],
      ),
    );
  }
}
