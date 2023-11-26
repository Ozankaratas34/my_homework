import 'package:flutter/material.dart';
import 'package:instagram_clone/components/post_card.dart';
import 'package:instagram_clone/components/story_card.dart';
import 'package:instagram_clone/models/comment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Body
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Header
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 130,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "lib/assets/images/logo.png"))),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.add_circle,
                              size: 30,
                              color: Colors.black87,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.favorite,
                              size: 30,
                              color: Colors.black87,
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.send,
                              size: 30,
                              color: Colors.black87,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  // Stories
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        child: Row(
                          children: [
                            StoryCard(
                                avatarImage: "lib/assets/images/face1.jpg",
                                username: "Erkam Yılmaz"),
                            SizedBox(width: 6),
                            StoryCard(
                                avatarImage: "lib/assets/images/face2.jpg",
                                username: "Doğa Rutkay"),
                            SizedBox(width: 6),
                            StoryCard(
                                avatarImage: "lib/assets/images/face3.jpg",
                                username: "Mehmet Savaş"),
                            SizedBox(width: 6),
                            StoryCard(
                                avatarImage: "lib/assets/images/face1.jpg",
                                username: "Erkam Yılmaz"),
                            SizedBox(width: 6),
                            StoryCard(
                                avatarImage: "lib/assets/images/face2.jpg",
                                username: "Doğa Rutkay"),
                            SizedBox(width: 6),
                            StoryCard(
                                avatarImage: "lib/assets/images/face3.jpg",
                                username: "Mehmet Savaş")
                          ],
                        )),
                  ),
                  // Posts
                  PostCard(
                    avatarImage: "lib/assets/images/face1.jpg",
                    username: "Şenol Güneş",
                    location: "Denizli",
                    postImage: "lib/assets/images/post2.jpg",
                    comments: [
                      Comment(
                          username: "pelin1203",
                          body:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                      Comment(
                          username: "kral_01",
                          body: "Lorem ipsum dolor sit amet..")
                    ],
                  ),
                  const SizedBox(height: 6),
                  PostCard(
                    avatarImage: "lib/assets/images/face3.jpg",
                    username: "Kıvanç Bulur",
                    location: "İstanbul",
                    postImage: "lib/assets/images/post1.jpg",
                    comments: [
                      Comment(
                          username: "washingtondc",
                          body: "Lorem ipsum dolor sit amet consectetur.")
                    ],
                  )
                ],
              ),
            ),
          )
          // Footer
          ,
          Container(
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey, width: 1))),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.black87,
                    size: 36,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black87,
                    size: 36,
                  ),
                  Icon(
                    Icons.smart_display,
                    color: Colors.black87,
                    size: 36,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.black87,
                    size: 36,
                  ),
                  Icon(
                    Icons.person,
                    color: Colors.black87,
                    size: 36,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
