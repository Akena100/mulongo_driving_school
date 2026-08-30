import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isCompact = size.width < 700;

    return SizedBox(
      width: double.infinity,
      height: isCompact ? 520 : 500,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/new brand (1) (1)-1.png',
            fit: BoxFit.cover,
            alignment: Alignment.center,
            errorBuilder: (context, error, stackTrace) =>
                const ColoredBox(color: AppColors.blue),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.blueDark.withValues(alpha: .9),
                  AppColors.blue.withValues(alpha: .58),
                  AppColors.blueDark.withValues(alpha: .18),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isCompact ? 20 : 40,
              vertical: isCompact ? 34 : 52,
            ),
            child: Align(
              alignment: isCompact ? Alignment.centerLeft : Alignment.center,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: isCompact ? double.infinity : 530,
                    child: _HeroCopy(isCompact: isCompact),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroCopy extends StatelessWidget {
  final bool isCompact;

  const _HeroCopy({this.isCompact = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Learn to Drive',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.white,
            fontSize: isCompact ? 32 : null,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Professional driving lessons designed to help you become a confident, responsible and skilled driver.',
          style: TextStyle(color: Colors.white70, height: 1.5),
        ),
        const SizedBox(height: 22),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orange,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
              child: const Text('Book Driving Lessons'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white70),
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
              child: const Text('Call Us'),
            ),
          ],
        ),
      ],
    );
  }
}
