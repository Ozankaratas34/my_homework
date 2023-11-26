import 'package:explore_clone/components/location_card.dart';
import 'package:explore_clone/components/near_you_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // nav
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome, K1",
                        style: TextStyle(color: Colors.black38, fontSize: 16)),
                    Text(
                      "Explore Istanbul City",
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.light_mode,
                      color: Colors.red.shade400,
                      size: 26,
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 26,
                    )
                  ],
                )
              ],
            ),
          ),
          // content
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                // search
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.location_on_sharp,
                            color: Colors.grey, size: 22),
                        const SizedBox(width: 6),
                        const Expanded(
                            child: Text("Caferağa, Kadıköy",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 18))),
                        Icon(Icons.tune, color: Colors.red.shade400, size: 22),
                      ],
                    ),
                  ),
                ),
                const Locations(),
                const NearYou(),
                const TopRated()
              ],
            ),
          )),
          // navigations
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 34,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.groups,
                      color: Colors.grey,
                      size: 34,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Moments",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.maps_ugc,
                      color: Colors.orange.shade400,
                      size: 44,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Book",
                      style: TextStyle(
                          color: Colors.orange.shade400, fontSize: 12),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.question_answer,
                      color: Colors.grey,
                      size: 34,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Chat",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 34,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Locations",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "View All",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationCard(
                      image: "lib/assets/images/face1.jpg", name: "Ahmet C."),
                  LocationCard(
                      image: "lib/assets/images/face2.jpg", name: "Pelin Y."),
                  LocationCard(
                      image: "lib/assets/images/face3.jpg", name: "Arzu S."),
                  LocationCard(
                      image: "lib/assets/images/face4.jpg", name: "Yalçın B."),
                  LocationCard(
                      image: "lib/assets/images/face1.jpg", name: "Ahmet C."),
                  LocationCard(
                      image: "lib/assets/images/face2.jpg", name: "Arzu Y."),
                  LocationCard(
                      image: "lib/assets/images/face3.jpg", name: "Mehmet S."),
                  LocationCard(
                      image: "lib/assets/images/face3.jpg", name: "Yalçın B.")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NearYou extends StatelessWidget {
  const NearYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Near you",
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NearYouCard(
                      image: "lib/assets/images/view1.jpg",
                      name: "Park",
                      distance: "7.2Km",
                      price: "15₺"),
                  NearYouCard(
                      image: "lib/assets/images/view2.jpg",
                      name: "Sevgi Yolu",
                      distance: "700m",
                      price: "27₺"),
                  NearYouCard(
                      image: "lib/assets/images/view3.jpg",
                      name: "Yürüyüş Park",
                      distance: "3.5Km",
                      price: "100₺"),
                  NearYouCard(
                      image: "lib/assets/images/view2.jpg",
                      name: "Sevgi Yolu",
                      distance: "700m",
                      price: "27₺"),
                  NearYouCard(
                      image: "lib/assets/images/view1.jpg",
                      name: "Park",
                      distance: "7.2Km",
                      price: "15₺")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopRated extends StatelessWidget {
  const TopRated({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top rated",
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                Text(
                  "View all",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  NearYouCard(
                      image: "lib/assets/images/view3.jpg",
                      name: "Yürüyüş Park",
                      distance: "3.5Km",
                      price: "100₺"),
                  NearYouCard(
                      image: "lib/assets/images/view1.jpg",
                      name: "Park",
                      distance: "7.2Km",
                      price: "15₺"),
                  NearYouCard(
                      image: "lib/assets/images/view2.jpg",
                      name: "Sevgi Yolu",
                      distance: "700m",
                      price: "27₺")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
