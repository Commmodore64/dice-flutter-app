import "dart:math";

import "package:flutter/material.dart";

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int random1 = 1;
  int random2 = 1;

  void randonmize() {
    random1 = Random().nextInt(6) + 1;
    random2 = Random().nextInt(6) + 1;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    randonmize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 56, 56),
      appBar: AppBar(
        title: const Text("Dados"),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_box)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit_outlined))
        ],
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: GestureDetector(
              child: Image.asset("../images/images/dice$random1.png"),
              onTap: () {
                setState(() {
                  random1 = Random().nextInt(6) + 1;
                });
              },
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: GestureDetector(
              child: Image.asset("../images/images/dice$random2.png"),
              onTap: () {
                setState(() {
                  random2 = Random().nextInt(6) + 1;
                });
              },
            ),
          )),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            randonmize();
          });
        },
        child: const Icon(Icons.autorenew_outlined),
      ),
    );
  }
}
