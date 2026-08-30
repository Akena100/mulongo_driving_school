import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionTitle({super.key, required this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: AppColors.blueDark,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 6),
          Text(subtitle!, style: TextStyle(color: AppColors.textSecondary)),
        ],
      ],
    );
  }
}
