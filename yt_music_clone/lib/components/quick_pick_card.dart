import 'package:flutter/material.dart';

class QuickPickCard extends StatelessWidget {
  const QuickPickCard(
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
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // image section
          Container(
            width: 60,
            height: 60,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          const SizedBox(width: 10),
          // body
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  singer,
                  style: const TextStyle(color: Colors.white38, fontSize: 14),
                )
              ],
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 30,
            color: Colors.white54,
          )
        ],
      ),
    );
  }
}
