import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';

class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      title: Text(
        'Mulongo Driving School',
        style: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => context.go('/'),
          child: const Text('Home', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () => context.go('/about'),
          child: const Text('About', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () => context.go('/courses'),
          child: const Text('Courses', style: TextStyle(color: Colors.black)),
        ),
        TextButton(
          onPressed: () => context.go('/instructors'),
          child: const Text(
            'Instructors',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () => context.go('/gallery'),
          child: const Text('Gallery', style: TextStyle(color: Colors.black)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ElevatedButton(
            onPressed: () => context.go('/contact'),
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.orange),
            child: const Text('Book Driving Lessons'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
