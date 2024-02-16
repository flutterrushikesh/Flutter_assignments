import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});
  @override
  State createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State {
  List<Map> imagelist = [
    {
      "title": "OneDay",
      "cricket": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFXRB1nvOeha0YTcPHBXVu-I_6YCkd9bxrEw&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrdVjUuCWYl1hcLHl35TFbKYZxAF2t-WzUGQ&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRoqCvAZm4BWIoDSj65nhst5D37CGhUEqzvA&usqp=CAU",
      ]
    },
    {
      "title": "T20",
      "cricket": [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqJPA697yQtCebt2ZAAeyo2JCL5g078khuQQ&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbvSiphSTkKzCwgBMvFDn7-YE3_k2-Rz0Qsg&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvUJXUg1bppyAUrqCxOgAt1TssRgmMSlKojQ&usqp=CAU",
      ]
    },
    {
      "title": "Test",
      "cricket": [
        "https://www.kreedon.com/wp-content/uploads/2019/04/17kohli1-324x235.jpg.webp",
        "https://images.thequint.com/thequint%2F2023-05%2F042f3ee6-361e-470b-bb14-0467e48604c2%2FRON_1195.JPG",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvUJXUg1bppyAUrqCxOgAt1TssRgmMSlKojQ&usqp=CAU",
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Players",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemCount: imagelist.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            Text(
              imagelist[index]["title"],
              style: const TextStyle(fontSize: 18),
            ),
            for (int i = 0; i < imagelist.length; i++)
              Container(
                height: 400,
                width: 400,
                margin: const EdgeInsets.all(10),
                child: Image.network(imagelist[index]["cricket"][i]),
              ),
          ]);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Center(
              child: Text("------------------------------------------------"));
        },
      ),
    );
  }
}
