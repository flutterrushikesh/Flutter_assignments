import 'package:flutter/material.dart';

class DynamicListview extends StatefulWidget {
  const DynamicListview({super.key});
  @override
  State<DynamicListview> createState() => _DynamicListviewState();
}

class _DynamicListviewState extends State<DynamicListview> {
  List<String> imagelist = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkg3xIvd5F5PdBNHq02XJTO4I35KlUDiyA2A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3XHEuOxgjfCV0zW4l4Jkgtj7aOPIT58tfNONrqHJmv_wiw1CXAGOR_zXTst2GABmQUEM&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3XHEuOxgjfCV0zW4l4Jkgtj7aOPIT58tfNONrqHJmv_wiw1CXAGOR_zXTst2GABmQUEM&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPNlzx5cwI-uUtaZVlBjLg81pwln3i19m0xKloAaAprhcqJUPOXgzg2FKAjHDEU0v4SrE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdC1Y5-SYufratcM-SyD65Wh7uKMTnOzAPdZSn_WgnB3M8IJRvgUerY7XSgM6yVSWyXTU&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdC1Y5-SYufratcM-SyD65Wh7uKMTnOzAPdZSn_WgnB3M8IJRvgUerY7XSgM6yVSWyXTU&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Image List"),
        ),
        body: ListView.builder(
            itemCount: imagelist.length,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.network(
                    imagelist[index],
                  ));
            }));
  }
}
