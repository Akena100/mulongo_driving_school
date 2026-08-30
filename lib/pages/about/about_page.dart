import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/google_fonts_stub.dart';
import '../../core/utils/url_launcher_service.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/footer/app_footer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHero(context, isDarkMode),
            _buildStory(context, isDarkMode),
            _buildValues(context, isDarkMode),
            _buildCallToAction(context),
            const AppFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context, bool isDarkMode) {
    final isMobile = MediaQuery.of(context).size.width < 760;
    final foreground = isDarkMode ? AppColors.darkText : AppColors.white;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        isMobile ? 24 : 56,
        isMobile ? 52 : 76,
        isMobile ? 24 : 56,
        isMobile ? 48 : 68,
      ),
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ABOUT MULONGO',
                      style: GoogleFonts.poppins(
                        color: AppColors.accent,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Drive with skill.\nMove with confidence.',
                      style: GoogleFonts.poppins(
                        color: foreground,
                        fontSize: isMobile ? 34 : 54,
                        fontWeight: FontWeight.w700,
                        height: 1.08,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Since 2007, we have been helping learners in Kampala turn nervous first drives into calm, capable journeys.',
                      style: GoogleFonts.poppins(
                        color: foreground.withValues(alpha: 0.86),
                        fontSize: 16,
                        height: 1.65,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => context.go('/contact'),
                          icon: const Icon(Icons.arrow_forward_rounded),
                          label: const Text('Start your journey'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: AppColors.primary,
                            backgroundColor: AppColors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                          ),
                        ),
                        OutlinedButton.icon(
                          onPressed: () => UrlLauncherService.launchWhatsApp(
                            AppConstants.whatsappNumber.replaceAll('+', ''),
                          ),
                          icon: const Icon(Icons.chat_rounded),
                          label: const Text('Chat with us'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: foreground,
                            side: BorderSide(
                              color: foreground.withValues(alpha: 0.65),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (!isMobile) ...[
                const SizedBox(width: 56),
                Flexible(flex: 2, child: _buildHeroBadge(foreground)),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroBadge(Color foreground) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        border: Border.all(color: Colors.white.withValues(alpha: 0.22)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.route_rounded, color: AppColors.accent, size: 42),
          const SizedBox(height: 22),
          Text(
            'A steady start\nfor every learner',
            style: GoogleFonts.poppins(
              color: foreground,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Patient guidance, practical road time, and lessons built around your progress.',
            style: GoogleFonts.poppins(
              color: foreground.withValues(alpha: 0.75),
              fontSize: 14,
              height: 1.55,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStory(BuildContext context, bool isDarkMode) {
    final isMobile = MediaQuery.of(context).size.width < 760;
    final textColor = isDarkMode ? AppColors.darkText : AppColors.textPrimary;
    final secondaryColor = isDarkMode
        ? AppColors.darkSecondaryText
        : AppColors.textSecondary;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 56,
        vertical: isMobile ? 54 : 82,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Flex(
            direction: isMobile ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OUR STORY',
                      style: GoogleFonts.poppins(
                        color: AppColors.orangeDark,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.8,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Experience that keeps you moving forward.',
                      style: GoogleFonts.poppins(
                        color: textColor,
                        fontSize: isMobile ? 28 : 38,
                        fontWeight: FontWeight.w700,
                        height: 1.18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: isMobile ? 0 : 72, height: isMobile ? 24 : 0),
              Expanded(
                child: Text(
                  'Mulongo Driving School began in 2007 with a simple purpose: make learning to drive feel clear, practical, and achievable. Today, our Kampala-based school continues to welcome complete beginners, returning drivers, and learners who want to sharpen their confidence on the road.\n\nFrom manual and automatic lessons to refresher training, we focus on the habits that matter long after the lesson ends: awareness, control, patience, and good judgement.',
                  style: GoogleFonts.poppins(
                    color: secondaryColor,
                    fontSize: 15,
                    height: 1.75,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildValues(BuildContext context, bool isDarkMode) {
    final isMobile = MediaQuery.of(context).size.width < 760;
    final cardColor = isDarkMode ? AppColors.darkCard : AppColors.background;
    final textColor = isDarkMode ? AppColors.darkText : AppColors.textPrimary;
    final secondaryColor = isDarkMode
        ? AppColors.darkSecondaryText
        : AppColors.textSecondary;
    const values = [
      (
        Icons.shield_outlined,
        'Safety first',
        'Build road awareness and responsible driving habits.',
      ),
      (
        Icons.psychology_outlined,
        'Patient coaching',
        'Learn at a pace that turns practice into progress.',
      ),
      (
        Icons.directions_car_filled_outlined,
        'Real practice',
        'Gain useful experience across manual and automatic training.',
      ),
    ];

    return Container(
      width: double.infinity,
      color: isDarkMode ? AppColors.darkSurface : AppColors.lightGrey,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 56,
        vertical: isMobile ? 48 : 64,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'WHAT YOU CAN EXPECT',
                style: GoogleFonts.poppins(
                  color: AppColors.orangeDark,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.8,
                ),
              ),
              const SizedBox(height: 22),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: values.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 1 : 3,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  mainAxisExtent: 190,
                ),
                itemBuilder: (context, index) {
                  final value = values[index];
                  return Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: isDarkMode
                            ? AppColors.darkBorder
                            : AppColors.border,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(value.$1, color: AppColors.orange, size: 30),
                        const SizedBox(height: 18),
                        Text(
                          value.$2,
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          value.$3,
                          style: GoogleFonts.poppins(
                            color: secondaryColor,
                            fontSize: 13,
                            height: 1.45,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCallToAction(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 760;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 56,
        vertical: isMobile ? 48 : 72,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(isMobile ? 26 : 38),
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Flex(
              direction: isMobile ? Axis.vertical : Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ready to take the wheel?',
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
                          fontSize: isMobile ? 24 : 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Let’s plan your first lesson in Kampala.',
                        style: GoogleFonts.poppins(
                          color: AppColors.white.withValues(alpha: 0.88),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: isMobile ? 0 : 24, height: isMobile ? 22 : 0),
                FilledButton.icon(
                  onPressed: () => context.go('/contact'),
                  icon: const Icon(Icons.calendar_month_rounded),
                  label: const Text('Book a lesson'),
                  style: FilledButton.styleFrom(
                    foregroundColor: AppColors.orangeDark,
                    backgroundColor: AppColors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
