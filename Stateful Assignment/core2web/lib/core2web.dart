import 'package:flutter/material.dart';

class Core2Web extends StatefulWidget {
  const Core2Web({super.key});
  @override
  State<Core2Web> createState() => _Core2WebState();
}

class _Core2WebState extends State<Core2Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hello",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue.shade100,
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "My Cources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbovGM09BrzErsXMNQWkTAYj_eWl1aGxRsrQ&usqp=CAU',
                    //height: 200,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnib96eJz-nxAXE_7oLYdPLITKSadYwtpRfw&usqp=CAU',
                    height: 170,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                  // height: 80,
                ),
                Text(
                  "Online Cources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzUf29niL5oqINYYcjz4Z_3ik5fOLV0fB5QQ&usqp=CAU',
                    height: 170,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnyOKIWkPBV7KS0Ta1iSu39UAMqtJ-Sb5MpQ&usqp=CAU',
                    height: 170,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQsEl1aqhSPOmSr-SA1HET9wd3pwB3stnc_g&usqp=CAU',
                  ),
                  const SizedBox(width: 10)
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Offline Cources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv4ortp6vZxP7IRiQY5rEiVDSkqqQvMbJamA&usqp=CAU',
                    height: 165,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY5zQQfgYdauP902KBIcvqGVfUGvUT4gyCJw&usqp=CAU',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2FmXgQotjHHd2vSPkMlMfkT0TsfYveA1G-w&usqp=CAU',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Upcoming cources",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQofAJYPOtI0UPQpXODYwZG1jRsw2aEDJb6tw&usqp=CAU',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAj57mPzUnDCib0K2NHZSLyW0OBeMFKJTzbw&usqp=CAU',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE9TUhlR9nLkTei1Z5ZyOiUTidsl-XVwkx6w&usqp=CAU',
                  )
                ],
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.play_circle_fill_outlined),
            label: 'Play',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_moderator_outlined),
            label: 'Forum',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.emoji_emotions_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
