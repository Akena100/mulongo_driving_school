import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class InstructorCard extends StatelessWidget {
  final String name;
  final String position;
  final String imageUrl;

  const InstructorCard({
    super.key,
    required this.name,
    required this.position,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(position, style: TextStyle(color: AppColors.textSecondary)),
          ],
        ),
      ),
    );
  }
}
