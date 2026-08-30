import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.blue,
        side: const BorderSide(color: AppColors.blue),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(label),
    );
  }
}
