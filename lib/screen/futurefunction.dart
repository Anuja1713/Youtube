import 'package:flutter/material.dart';

class Futurefunction extends StatefulWidget {
  const Futurefunction({super.key});

  @override
  State<Futurefunction> createState() => _FuturefunctionState();
}

class _FuturefunctionState extends State<Futurefunction> {
  String Message = "Waiting..";

  Future<String> _getdata() async {
    return Future.delayed(Duration(seconds: 5), () {
      return "Hello Anuja Welcome to MicroSoft";
    });
  }

  Future<void> _Fetchdata() async {
    setState(() {
      Message = "Fetching data...";
    });
    String result = await _getdata();
    setState(() {
      Message = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Future Function",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 216, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Message, style: TextStyle(color: Colors.black, fontSize: 30)),
            FloatingActionButton(onPressed: _Fetchdata, child: Text("Fetch")),
          ],
        ),
      ),
    );
  }
}
