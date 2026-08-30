import 'package:flutter/material.dart';

class GalleryGrid extends StatelessWidget {
  final List<String> images;

  const GalleryGrid({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 4 / 3,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          images[index],
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
