import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class TrustIndicators extends StatelessWidget {
  const TrustIndicators({super.key});

  Widget _buildItem(IconData icon, String title, String subtitle) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.orange,
            radius: 28,
            child: Icon(icon, color: AppColors.white, size: 28),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueLight,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildItem(
              Icons.directions_car,
              'Professional Training',
              'Modern vehicles and expert instructors',
            ),
            _buildItem(
              Icons.school,
              'Skilled Instructors',
              'Experienced and patient teachers',
            ),
            _buildItem(
              Icons.shield,
              'Safety First',
              'We prioritise safe driving practices',
            ),
            _buildItem(
              Icons.star,
              'Student-Focused',
              'Personalised lesson plans',
            ),
          ],
        ),
      ),
    );
  }
}
