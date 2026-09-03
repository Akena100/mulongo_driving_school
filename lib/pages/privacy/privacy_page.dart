import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../widgets/footer/app_footer.dart';
import '../../widgets/navigation/app_header.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  static const List<_PrivacySectionData> _sections = [
    _PrivacySectionData(
      title: 'Introduction',
      icon: '📖',
      content:
          'Welcome to Mulongo Driving School. Your privacy matters to us. This Privacy Policy explains how we collect, use, protect, and share your information when you book lessons, contact us, or use our website and services.',
    ),
    _PrivacySectionData(
      title: 'Information We Collect',
      icon: '📊',
      content:
          'We may collect personal information such as your name, phone number, email address, ID details, lesson preferences, location, communication records, and relevant vehicle or payment information required to provide driving lessons and related support.',
    ),
    _PrivacySectionData(
      title: 'How We Use Your Information',
      icon: '🔧',
      content:
          'We use your data to manage lesson bookings, confirm appointments, contact you about services, improve the student experience, communicate offers, process payments, and meet legal and regulatory requirements.',
    ),
    _PrivacySectionData(
      title: 'Sharing of Information',
      icon: '🤝',
      content:
          'We do not sell personal data. We may share your information with trusted service providers, payment processors, and legal authorities when required to deliver services, handle payments, or comply with applicable laws.',
    ),
    _PrivacySectionData(
      title: 'Data Security',
      icon: '🔒',
      content:
          'We take reasonable steps to protect personal information using secure systems, limited access, and best practices for handling sensitive student and payment-related data.',
    ),
    _PrivacySectionData(
      title: 'Data Retention',
      icon: '💾',
      content:
          'We retain personal information only for as long as necessary to provide our services, resolve disputes, fulfill legal obligations, and support business operations.',
    ),
    _PrivacySectionData(
      title: 'Your Rights',
      icon: '✅',
      content:
          'You may request access, correction, or deletion of your personal information, depending on the applicable law and the purpose for which it was collected. We will respond to valid requests in a fair and timely manner.',
    ),
    _PrivacySectionData(
      title: 'Third-Party Links',
      icon: '🌐',
      content:
          'Our website may contain links to external websites. We are not responsible for the privacy practices or content of those third-party sites and encourage you to review their policies before sharing personal information.',
    ),
    _PrivacySectionData(
      title: 'Policy Updates',
      icon: '🔄',
      content:
          'We may update this Privacy Policy from time to time. Any material changes will be reflected on this page, and continued use of our services implies your acceptance of the updated policy.',
    ),
    _PrivacySectionData(
      title: 'Contact Us',
      icon: '📞',
      content:
          'If you have any questions about this Privacy Policy, please contact us at: \nPhone: +256 776 320253\nEmail: mulongodrivingschools1@gmail.com\nAddress: Uganda',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 40,
                vertical: isMobile ? 48 : 72,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary,
                    AppColors.primary.withValues(alpha: 0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '🔒',
                      style: const TextStyle(fontSize: 72),
                    ).animate().fadeIn(duration: 500.ms).scale(),
                    const SizedBox(height: 20),
                    Text(
                      'Privacy Policy',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 30 : 46,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2),
                    const SizedBox(height: 12),
                    Text(
                      'Your information is handled with care and respect.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 14 : 17,
                        color: AppColors.white.withValues(alpha: 0.92),
                        fontWeight: FontWeight.w400,
                      ),
                    ).animate().fadeIn(duration: 700.ms),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 40,
                vertical: isMobile ? 32 : 56,
              ),
              child: Column(
                children: List.generate(_sections.length, (index) {
                  final section = _sections[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: isDarkMode
                            ? const Color(0xFF1A2332)
                            : AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: isDarkMode
                              ? const Color(0xFF2A3F5F)
                              : AppColors.borderGrey,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                section.icon,
                                style: const TextStyle(fontSize: 26),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  section.title,
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Text(
                            section.content,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: isDarkMode
                                  ? const Color(0xFFB0BAC9)
                                  : AppColors.mediumGrey,
                              height: 1.7,
                            ),
                          ),
                        ],
                      ),
                    ).animate(delay: (100 * index).ms).fadeIn(duration: 500.ms),
                  );
                }),
              ),
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class _PrivacySectionData {
  final String title;
  final String icon;
  final String content;

  const _PrivacySectionData({
    required this.title,
    required this.icon,
    required this.content,
  });
}
