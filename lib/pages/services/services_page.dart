import 'package:flutter/material.dart';
import 'package:mulongo_driving_school/widgets/footer/app_footer.dart';
import '../../widgets/section_title.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/buttons/primary_button.dart';
import '../../core/theme/app_colors.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hero section
            Container(
              height: 320,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/new brand (1) (1)-1.png'),
                  fit: BoxFit.cover,
                ),
                color: AppColors.primary,
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: 0.45),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 28,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Online Driving School',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Flexible lessons, video resources, and instructor support — learn at your pace from anywhere.',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(color: Colors.white70),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        PrimaryButton(
                          label: 'Start Now',
                          onPressed: () =>
                              Navigator.pushNamed(context, '/contact'),
                        ),
                        const SizedBox(width: 12),
                        OutlinedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/courses'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white24),
                          ),
                          child: const Text('View Courses'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Content padding
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 28,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(
                    title: 'Our Professional Services',
                    subtitle: 'Practical, trustworthy, and affordable',
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: const [
                      _ServiceCard(
                        title: 'Professional Driving',
                        description:
                            'Comprehensive driving lessons with experienced instructors. From beginner to advanced, we focus on safety and confidence.',
                        icon: Icons.drive_eta_rounded,
                      ),
                      _ServiceCard(
                        title: 'Basic Mechanics',
                        description:
                            'Hands-on basic vehicle maintenance training: oil changes, tyre care, brakes and simple diagnostics.',
                        icon: Icons.build_rounded,
                      ),
                      _ServiceCard(
                        title: 'Permits Processing',
                        description:
                            'We assist with the paperwork and guidance required to obtain driving permits and licences quickly and correctly.',
                        icon: Icons.document_scanner_rounded,
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
                  Text(
                    'Why choose our services?',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Experienced instructors, practical training, flexible schedules, and support through permit formalities. We aim to make learning to drive and maintaining your vehicle straightforward and stress-free.',
                  ),
                  const SizedBox(height: 20),
                  // Detailed Service Sections
                  const _ServiceDetail(
                    title: 'Professional Driving',
                    points: [
                      'Beginner to advanced practical lessons',
                      'Mock road tests and assessment',
                      'Flexible scheduling and online resources',
                    ],
                  ),
                  const SizedBox(height: 16),
                  const _ServiceDetail(
                    title: 'Basic Mechanics',
                    points: [
                      'Oil, filters and basic upkeep',
                      'Tyre care and brake checks',
                      'Reading basic fault codes',
                    ],
                  ),
                  const SizedBox(height: 16),
                  const _ServiceDetail(
                    title: 'Permits Processing',
                    points: [
                      'Application guidance and form checks',
                      'Document preparation and submission',
                      'Follow-up and status support',
                    ],
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: PrimaryButton(
                      label: 'Book a Service',
                      onPressed: () => Navigator.pushNamed(context, '/contact'),
                    ),
                  ),
                  const SizedBox(height: 48),
                  const AppFooter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const _ServiceCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: 360,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: Colors.white, size: 28),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  color: isDark
                      ? const Color(0xFFB0BAC9)
                      : AppColors.mediumGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ServiceDetail extends StatelessWidget {
  final String title;
  final List<String> points;

  const _ServiceDetail({required this.title, required this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        ...points.map(
          (p) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.check_circle_outline,
                  size: 18,
                  color: AppColors.primary,
                ),
                const SizedBox(width: 8),
                Expanded(child: Text(p)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
