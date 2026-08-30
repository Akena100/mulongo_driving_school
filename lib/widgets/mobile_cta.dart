import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/constants/app_constants.dart';
import '../core/utils/url_launcher_service.dart';

class MobileCtaBar extends StatelessWidget {
  const MobileCtaBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 600) return const SizedBox.shrink();
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        color: AppColors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () =>
                  UrlLauncherService.launchPhone(AppConstants.phoneNumber),
              icon: const Icon(Icons.phone),
              label: const Text('Call'),
            ),
            ElevatedButton.icon(
              onPressed: () => UrlLauncherService.launchWhatsApp(
                AppConstants.whatsappNumber.replaceAll('+', ''),
                message: 'Hello',
              ),
              icon: const Icon(Icons.chat),
              label: const Text('WhatsApp'),
            ),
          ],
        ),
      ),
    );
  }
}
