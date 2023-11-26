import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard(
      {super.key,
      required this.image,
      required this.title,
      required this.singer});
  final String image;
  final String title;
  final String singer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(image: AssetImage(image))),
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            singer,
            style: const TextStyle(color: Colors.white38, fontSize: 14),
          )
        ],
      ),
    );
  }
}
