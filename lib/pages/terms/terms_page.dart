import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_colors.dart';
import '../../widgets/footer/app_footer.dart';
import '../../widgets/navigation/app_header.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  final List<_TermsSectionData> _sections = const [
    _TermsSectionData(
      title: '1. Agreement and Scope',
      icon: '📄',
      content:
          'These Terms and Conditions govern your use of Mulongo Driving School services, bookings, website information, and any lessons or products supplied by us. By booking or using our services, you agree to these terms.',
    ),
    _TermsSectionData(
      title: '2. Booking and Enrollment',
      icon: '📝',
      content:
          'Students must provide accurate personal information when booking lessons. We reserve the right to confirm enrollment, schedule lessons, and adjust class arrangements based on availability, instructor assignment, and operational requirements.',
    ),
    _TermsSectionData(
      title: '3. Lesson Conduct',
      icon: '🚗',
      content:
          'Students are expected to arrive on time, follow instructions given by instructors, behave respectfully, and comply with road safety laws and school policies. Unsafe or disruptive behavior may result in suspension or cancellation of lessons.',
    ),
    _TermsSectionData(
      title: '4. Fees and Payment',
      icon: '💳',
      content:
          'Fees are charged according to the selected package or lesson plan. Payment terms must be honored as agreed. Any additional services or rescheduling requests may incur extra charges.',
    ),
    _TermsSectionData(
      title: '5. Cancellation and Rescheduling',
      icon: '🔄',
      content:
          'Students may reschedule lessons with prior notice, subject to availability. Late cancellations or no-shows may be charged partially or in full, depending on the lesson type and notice period given.',
    ),
    _TermsSectionData(
      title: '6. Safety and Vehicle Use',
      icon: '🛡️',
      content:
          'All vehicles used for instruction are maintained to reasonable safety standards. Students must comply with driver safety guidance and traffic laws. We do not accept liability for damages caused by misuse, negligence, or violation of instructions.',
    ),
    _TermsSectionData(
      title: '7. Student Responsibility',
      icon: '✅',
      content:
          'You are responsible for ensuring you are legally eligible to drive, maintaining a valid learner permit when required, and presenting all necessary identification or documents needed for your lessons or test preparation.',
    ),
    _TermsSectionData(
      title: '8. Liability Limitation',
      icon: '⚠️',
      content:
          'To the maximum extent permitted by law, Mulongo Driving School will not be liable for indirect, incidental, or consequential losses arising from the use of our services, lessons, or website, including missed opportunities or operational delays.',
    ),
    _TermsSectionData(
      title: '9. Changes to Services',
      icon: '🔧',
      content:
          'We may amend lesson schedules, pricing, packages, or service offerings at any time. We will communicate material changes reasonably and continue to support our enrolled students as much as practicable.',
    ),
    _TermsSectionData(
      title: '10. Governing Law',
      icon: '🏛️',
      content:
          'These terms are governed by the laws of the Republic of Uganda, and any dispute related to our services will be subject to the jurisdiction of the Ugandan courts.',
    ),
    _TermsSectionData(
      title: '11. Contact',
      icon: '📞',
      content:
          'For questions about these terms, please contact Mulongo Driving School using the details provided on our contact page or by phone at +256 776 320253. We will assist promptly and professionally.',
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
                    AppColors.info,
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
                      '⚖️',
                      style: const TextStyle(fontSize: 72),
                    ).animate().fadeIn(duration: 500.ms).scale(),
                    const SizedBox(height: 20),
                    Text(
                      'Terms & Conditions',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 30 : 46,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.2),
                    const SizedBox(height: 12),
                    Text(
                      'Please read carefully before booking or attending lessons.',
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
                horizontal: isMobile ? 16 : 40,
                vertical: isMobile ? 28 : 52,
              ),
              child: Column(
                children: List.generate(_sections.length, (index) {
                  final section = _sections[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? const Color(0xFF1A2332)
                          : AppColors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: isDarkMode
                            ? const Color(0xFF2A3F5F)
                            : AppColors.borderGrey,
                      ),
                    ),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 4,
                      ),
                      childrenPadding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
                      leading: Text(
                        section.icon,
                        style: const TextStyle(fontSize: 24),
                      ),
                      title: Text(
                        section.title,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: isDarkMode
                              ? AppColors.darkText
                              : AppColors.darkGrey,
                        ),
                      ),
                      iconColor: AppColors.primary,
                      collapsedIconColor: AppColors.primary,
                      children: [
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
                  ).animate(delay: (100 * index).ms).fadeIn(duration: 500.ms);
                }),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 40,
                vertical: isMobile ? 12 : 28,
              ),
              padding: EdgeInsets.all(isMobile ? 20 : 28),
              decoration: BoxDecoration(
                color: isDarkMode
                    ? const Color(0xFF1A2332)
                    : AppColors.lightGrey,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.primary.withValues(alpha: 0.25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.info_outline_rounded,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Important Notice',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'By using our driving school services, you acknowledge that you have read, understood, and agree to these Terms and Conditions. If you do not accept them, please do not proceed with bookings or lesson attendance.',
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
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class _TermsSectionData {
  final String title;
  final String icon;
  final String content;

  const _TermsSectionData({
    required this.title,
    required this.icon,
    required this.content,
  });
}
