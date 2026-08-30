import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(label),
    );
  }
}
