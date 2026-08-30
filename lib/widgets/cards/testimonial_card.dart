import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class TestimonialCard extends StatelessWidget {
  final String quote;
  final String author;

  const TestimonialCard({super.key, required this.quote, required this.author});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
                Icon(Icons.star, color: Colors.orange),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '"$quote"',
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 8),
            Text(author, style: TextStyle(color: AppColors.textSecondary)),
          ],
        ),
      ),
    );
  }
}
