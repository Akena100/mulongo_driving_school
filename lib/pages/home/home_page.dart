import 'package:flutter/material.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/sections/hero_section.dart';
import '../../widgets/sections/trust_indicators.dart';
import '../../widgets/section_title.dart';
import '../../widgets/cards/course_card.dart';
import '../../widgets/cards/vehicle_card.dart';
import '../../widgets/gallery/gallery_grid.dart';
import '../../widgets/cards/testimonial_card.dart';
import '../../widgets/mobile_cta.dart';
import '../../widgets/footer/app_footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const HeroSection(),
                const SizedBox(height: 24),
                const TrustIndicators(),
                const SizedBox(height: 24),
                LayoutBuilder(
                  builder: (context, constraints) {
                    final horizontalPadding = constraints.maxWidth < 600
                        ? 20.0
                        : constraints.maxWidth < 1000
                        ? 32.0
                        : 48.0;
                    final columns = constraints.maxWidth >= 1000 ? 2 : 1;
                    final cardRatio = columns == 2 ? 2.8 : 2.4;

                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SectionTitle(
                            title: 'About Mulongo Driving School',
                            subtitle:
                                'Your Journey to Confident Driving Starts Here',
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Mulongo Driving School provides professional, student-focused driving lessons in Uganda. We prioritise safety and practical training.',
                          ),
                          const SizedBox(height: 24),

                          const SectionTitle(
                            title: 'Our Courses',
                            subtitle: 'Practical training for all levels',
                          ),
                          const SizedBox(height: 12),
                          GridView.count(
                            shrinkWrap: true,
                            crossAxisCount: columns,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: cardRatio,
                            physics: const NeverScrollableScrollPhysics(),
                            children: const [
                              CourseCard(
                                title: 'Manual Driving',
                                description:
                                    'Practical manual transmission lessons.',
                              ),
                              CourseCard(
                                title: 'Automatic Driving',
                                description:
                                    'Safe and confident automatic driving.',
                              ),
                              CourseCard(
                                title: 'Beginner Driving',
                                description: 'Start learning from scratch.',
                              ),
                              CourseCard(
                                title: 'Refresher Driving',
                                description: 'Improve existing skills.',
                              ),
                            ],
                          ),

                          const SizedBox(height: 24),
                          const SectionTitle(title: 'Training Vehicles'),
                          const SizedBox(height: 12),
                          GridView.count(
                            crossAxisCount: columns,
                            shrinkWrap: true,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              VehicleCard(
                                name: 'Toyota Corolla',
                                transmission: 'Manual Transmission',
                                imageUrl:
                                  'assets/images/20260623_163958.jpg',
                              ),
                              VehicleCard(
                                name: 'Nissan March',
                                transmission: 'Automatic Transmission',
                                imageUrl:
                                  'assets/images/20260515_150017.jpg',
                              ),
                            ],
                          ),

                          const SizedBox(height: 24),
                          const SectionTitle(title: 'Testimonials'),
                          const SizedBox(height: 12),
                          GridView.count(
                            crossAxisCount: columns,
                            shrinkWrap: true,
                            childAspectRatio: cardRatio,
                            physics: const NeverScrollableScrollPhysics(),
                            children: const [
                              TestimonialCard(
                                quote:
                                    'Mulongo Driving School helped me become more confident behind the wheel.',
                                author: 'Aisha, Former Student',
                              ),
                              TestimonialCard(
                                quote:
                                    'Professional instructors and practical lessons.',
                                author: 'Brian, Former Student',
                              ),
                            ],
                          ),

                          const SizedBox(height: 24),
                          const SectionTitle(title: 'Gallery'),
                          const SizedBox(height: 12),
                          const GalleryGrid(
                            images: [
                              'assets/images/20251227_123810.jpg',
                              'assets/images/20251227_123915.jpg',
                              'assets/images/20251227_124038.jpg',
                              'assets/images/20251227_124050.jpg',
                              'assets/images/20260515_150017.jpg',
                              'assets/images/20260623_163958.jpg',
                              'assets/images/20260623_164029.jpg',
                              'assets/images/20260623_164044.jpg',
                              'assets/images/20260623_164101.jpg',
                              'assets/images/20260623_165244.jpg',
                              'assets/images/20260625_145351.jpg',
                              'assets/images/lv_0_20251227133736.jpg',
                              'assets/images/lv_0_20251227134136.jpg',
                            ],
                          ),

                          const SizedBox(height: 24),
                          const SectionTitle(title: 'FAQ'),
                          const SizedBox(height: 12),
                          const Text(
                            'Common questions answered — see the FAQ page for more.',
                          ),

                          const SizedBox(height: 48),
                          const AppFooter(),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const MobileCtaBar(),
        ],
      ),
    );
  }
}
