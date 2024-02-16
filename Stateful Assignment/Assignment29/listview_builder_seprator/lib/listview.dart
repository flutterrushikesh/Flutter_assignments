import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});
  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State {
  List allPlayers = [
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO-coI75PQEo8A1G-Gy5zRAfACt88kC5bLnQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVIqsloTS9PbJMdUi5G3yQlBCsJ-6nmCQaHw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqwWb8j2on61SLUbYZ7wAwXhJNKkp-ieFb3Q&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCa7n5WflJyyX7JdT5sS21slRyMnme9OGs3w&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-CVxRc8rxCt4omNjQpkvjZA54MVPxYeISQ&usqp=CAU",
      " https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiVekF2iRFziloVCTtDsUiT-v1GoUr9I6WsQ&usqp=CAU",
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCa7n5WflJyyX7JdT5sS21slRyMnme9OGs3w&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-CVxRc8rxCt4omNjQpkvjZA54MVPxYeISQ&usqp=CAU",
    ],
  ];
  List typesOfMatch=[];
  //final List<String> entries = <String>['A', 'B', 'C'];
  //final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Players...",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: ListView.separated(
          itemCount: allPlayers.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${allPlayers[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Text("======"),
        ),
      ),
    );
  }
}
