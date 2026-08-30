import 'package:flutter/material.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/footer/app_footer.dart';
import '../../widgets/gallery/gallery_grid.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  static const List<String> galleryImages = [
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
    'assets/images/Screenshot_20260403_103056_Samsung Notes (1).jpg',
    'assets/images/Screenshot_20260403_103056_Samsung Notes.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'Our Gallery',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF102A43),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'A glimpse into real lessons, friendly instructors, and confident learners.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF4B5563),
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              GalleryGrid(
                images: galleryImages,
                padding: const EdgeInsets.only(bottom: 16),
              ),
              const SizedBox(height: 40),
              const AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
