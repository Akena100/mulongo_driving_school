import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;

  const CourseCard({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.blueDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(description, style: TextStyle(color: AppColors.textSecondary)),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: onTap,
                child: const Text('Learn More →'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
