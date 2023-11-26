import 'package:flutter/material.dart';
import 'package:yt_music_clone/components/favorite_card.dart';
import 'package:yt_music_clone/components/quick_pick_card.dart';
import 'package:yt_music_clone/components/recommended_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromRGBO(62, 36, 17, 1),
                Color.fromRGBO(48, 14, 32, 1)
              ])),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "lib/assets/images/logo.png"),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "Music",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.search,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(width: 20),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("lib/assets/images/pp.jpg"),
                              radius: 16,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 250, 250, 0.15),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Energize",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 250, 250, 0.15),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Workout",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 250, 250, 0.15),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Feel Good",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 250, 250, 0.15),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Party",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(250, 250, 250, 0.15),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Text(
                                "Focus",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Content
            // Quick picks
            const Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: Column(
                  children: [
                    QuickPicks(),
                    SizedBox(height: 20),
                    ForgottenFavories(),
                    SizedBox(height: 20),
                    Recommended()
                  ],
                ),
              ),
            )),
            // Navigations
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey.shade900),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 26,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.play_circle_fill_sharp,
                          color: Colors.white,
                          size: 26,
                        ),
                        Text(
                          "Samples",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.white,
                          size: 26,
                        ),
                        Text(
                          "Explore",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.subscriptions,
                          color: Colors.white,
                          size: 26,
                        ),
                        Text(
                          "Library",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.smart_display,
                          color: Colors.white,
                          size: 26,
                        ),
                        Text(
                          "Upgrade",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Text(
                "Recommended music videos",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white38)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Text(
                  "Play all",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              RecommendedCard(
                image: "lib/assets/images/video_cover3.jpg",
                title: "Yad Eller",
                singer: "maNga",
                views: "10.2M views",
              ),
              RecommendedCard(
                image: "lib/assets/images/video_cover2.jpg",
                title: "Thrift Shop",
                singer: "Macklemore",
                views: "2M views",
              ),
              RecommendedCard(
                  image: "lib/assets/images/video_cover1.png",
                  title: "Runaway",
                  singer: "Oscar and the Wolf",
                  views: "8.2M views")
            ],
          ),
        )
      ],
    );
  }
}

class ForgottenFavories extends StatelessWidget {
  const ForgottenFavories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Forgotten favorites",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white38)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Text(
                  "Play all",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FavoriteCard(
                  image: "lib/assets/images/cover3.jpg",
                  title: "Avenged Sevenfold",
                  singer: "Buried Alive"),
              FavoriteCard(
                  image: "lib/assets/images/cover4.jpeg",
                  title: "Ateşe Düştüm",
                  singer: "Mert Demir"),
              FavoriteCard(
                  image: "lib/assets/images/cover1.jpg",
                  title: "Meleğim",
                  singer: "Hayko Cepkin"),
              FavoriteCard(
                  image: "lib/assets/images/cover2.jpg",
                  title: "Senden Daha Güzel",
                  singer: "Duman"),
              FavoriteCard(
                  image: "lib/assets/images/cover3.jpg",
                  title: "Avenged Sevenfold",
                  singer: "Buried Alive"),
              FavoriteCard(
                  image: "lib/assets/images/cover4.jpeg",
                  title: "Ateşe Düştüm",
                  singer: "Mert Demir"),
            ],
          ),
        ),
      ],
    );
  }
}

class QuickPicks extends StatelessWidget {
  const QuickPicks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "START RADIO FROM A SONG",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Quick picks",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white38)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    child: Text(
                      "Play all",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            // Quick pick items
            const QuickPickCard(
                image: "lib/assets/images/cover1.jpg",
                title: "Ölüyorum",
                singer: "Hayko Cepkin"),
            const QuickPickCard(
                image: "lib/assets/images/cover2.jpg",
                title: "Bal",
                singer: "Duman"),
            const QuickPickCard(
                image: "lib/assets/images/cover3.jpg",
                title: "Scream",
                singer: "Avenged Sevenfold"),
            const QuickPickCard(
                image: "lib/assets/images/cover4.jpeg",
                title: "Dön Desem",
                singer: "Mert Demir")
          ],
        ));
  }
}
