import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  bool _isPost1liked = false;
  bool _isPost2liked = false;
  bool _isPost3liked = false;

  bool _isPost1bookmarked = false;
  bool _isPost2bookmarked = false;
  bool _isPost3bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('7'),
              child: Icon(Icons.account_circle),
            ),
            label: 'Profile',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
            width: 10,
          ),
          Icon(
            Icons.message_rounded,
            color: Colors.black,
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Row(
            children: [
              Text(
                "  Stories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                // height: 40,
                // width: 40,
                color: Colors.amber,
              )
            ],
          ),
          const Row(
            children: [
              Text(
                "  User_name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                child: Image.network(
                  "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost1liked = !_isPost1liked;
                      });
                    },
                    icon: Icon(
                      _isPost1liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                      color: _isPost1liked ? Colors.red : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost1bookmarked = !_isPost1bookmarked;
                      });
                    },
                    icon: Icon(
                      _isPost1bookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: _isPost1bookmarked
                          ? const Color.fromARGB(255, 0, 0, 0)
                          : Colors.black,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "   Likes",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   comments",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "",
                  ),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "  User_name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.amber,
                child: Image.network(
                  "https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost2liked = !_isPost2liked;
                      });
                    },
                    icon: Icon(
                      _isPost2liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                      color: _isPost2liked ? Colors.red : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost2bookmarked = !_isPost2bookmarked;
                      });
                    },
                    icon: Icon(
                      _isPost2bookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: _isPost2bookmarked
                          ? const Color.fromARGB(255, 0, 0, 0)
                          : Colors.black,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "   Likes",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   comments",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "",
                  ),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "  User_name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                child: Image.network(
                  "https://media.istockphoto.com/id/810985088/photo/medal-of-first-place-in-hand-victory-concept-medal-3d-rendering.jpg?s=612x612&w=0&k=20&c=Yb_l4CPx89aSbgzdUQ-pqXDoj3lAgZraGQZohNuCw3k=",
                  width: double.infinity,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost3liked = !_isPost3liked;
                      });
                    },
                    icon: Icon(
                      _isPost3liked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                      color: _isPost3liked ? Colors.red : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost3bookmarked = !_isPost3bookmarked;
                      });
                    },
                    icon: Icon(
                      _isPost3bookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: _isPost3bookmarked
                          ? const Color.fromARGB(255, 0, 0, 0)
                          : Colors.black,
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "   Likes",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   comments",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
