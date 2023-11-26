import 'package:flutter/material.dart';
import 'package:instagram_clone/models/comment.dart';

class PostCard extends StatefulWidget {
  const PostCard(
      {super.key,
      required this.avatarImage,
      required this.username,
      required this.location,
      required this.postImage,
      required this.comments});
  final String avatarImage;
  final String username;
  final String location;
  final String postImage;
  final List<Comment> comments;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.avatarImage),
                      radius: 18,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.username,
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 16),
                        ),
                        Text(
                          widget.location,
                          style: const TextStyle(
                              color: Colors.black45, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.more_horiz,
                  size: 26,
                )
              ],
            ),
          ),
          // Post Image
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.postImage), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              children: [
                ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: widget.comments.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
                          child: Row(
                            children: [
                              Expanded(
                                  child: RichText(
                                      maxLines: 3,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                widget.comments[index].username,
                                            style: const TextStyle(
                                                color: Colors.black87,
                                                fontSize: 14)),
                                        const TextSpan(text: " "),
                                        TextSpan(
                                            text: widget.comments[index].body,
                                            style: const TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14))
                                      ])))
                            ],
                          ),
                        ))
              ],
            ),
          ),
          // Footer
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.black54,
                      size: 22,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.black54,
                      size: 22,
                    ),
                  ],
                ),
                Icon(
                  Icons.flag,
                  color: Colors.black54,
                  size: 22,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
