import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayOutDesign(),
    );
  }
}

class LayOutDesign extends StatefulWidget {
  const LayOutDesign({Key? key}) : super(key: key);

  @override
  State<LayOutDesign> createState() => _LayOutDesign();
}

class _LayOutDesign extends State<LayOutDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        //leading: const Icon(Icons.code, size: 50),
        actions: const [
          Icon(Icons.phone),
        ],
        leading: const Icon(Icons.code, size: 50),
        title: const Text(
          "My first App",
          textDirection: TextDirection.ltr,
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 10,
                    color: Colors.black26,
                    offset: Offset(4, -4))
              ],
              gradient: const SweepGradient(colors: [
                Colors.deepOrange,
                Colors.white12,
                Colors.green,
              ]),
              border: Border.all(
                  color: Colors.pink, width: 5, style: BorderStyle.solid),
            )),
      ),
    );
  }
}
