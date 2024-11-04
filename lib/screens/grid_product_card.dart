import 'package:flutter/material.dart';

class GridProductCard extends StatelessWidget {
  final String artist;
  final String song;
  final String imageAsset;

  const GridProductCard({
    super.key,
    required this.artist,
    required this.song,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add the image here
            Image.asset(
              imageAsset,
              height: 100, 
              width: 100, 
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              artist,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              song,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}