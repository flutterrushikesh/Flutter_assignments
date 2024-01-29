import 'package:flutter/material.dart';

class Netflix extends StatelessWidget {
  const Netflix({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome To Netflix",
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Movie",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Image.network(
                    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                    width: 250,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                    width: 250,
                  ),
                  const SizedBox(width: 20),
                  Image.network(
                    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                    width: 250,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const Text(
              "WebSeries",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: null,
                  ),
                  Image.network(
                    'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg',
                    width: 150,
                    height: 200,
                  ),
                  const SizedBox(
                    width: null,
                  ),
                  Image.network(
                    'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943',
                    width: 160,
                    height: 200,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.network(
                    'https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555',
                    width: 150,
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            const Text("Most Popular", style: TextStyle(fontSize: 18)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 08,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.network(
                    'https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png',
                    width: 140,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.network(
                    'https://stat5.bollywoodhungama.in/wp-content/uploads/2023/11/12th-Fail.jpeg',
                    width: 160,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
