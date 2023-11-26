import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard(
      {super.key,
      required this.image,
      required this.title,
      required this.singer,
      required this.views});
  final String image;
  final String title;
  final String singer;
  final String views;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: const Center(
              child: Icon(
                Icons.play_circle,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 6),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                singer,
                style: const TextStyle(color: Colors.white38, fontSize: 14),
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.fiber_manual_record,
                size: 6,
                color: Colors.white24,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                views,
                style: const TextStyle(color: Colors.white38, fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ],
      ),
    );
  }
}
