import 'package:flutter/material.dart';

class StoryCard extends StatefulWidget {
  const StoryCard(
      {super.key, required this.avatarImage, required this.username});
  final String avatarImage;
  final String username;

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromRGBO(214, 71, 103, 1),
                Color.fromRGBO(241, 166, 117, 1)
              ])),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: CircleAvatar(
                backgroundImage: AssetImage(widget.avatarImage), radius: 32),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          widget.username,
          style: const TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
