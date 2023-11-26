import 'package:flutter/material.dart';

class NearYouCard extends StatelessWidget {
  const NearYouCard(
      {super.key,
      required this.image,
      required this.name,
      required this.distance,
      required this.price});
  final String image;
  final String name;
  final String distance;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: SizedBox(
        width: 180,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(
                            color: Colors.black87, fontSize: 16)),
                    Row(
                      children: [
                        const Icon(Icons.location_on_sharp, size: 12),
                        Text(
                          distance,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.orange.shade300),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      price,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
