import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key, required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Column(
        children: [
          // image
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(214, 71, 103, 1),
                  Color.fromRGBO(241, 166, 117, 1)
                ])),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
