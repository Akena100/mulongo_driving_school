import 'package:flutter/material.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/footer/app_footer.dart';

class TestimonialsPage extends StatelessWidget {
  const TestimonialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(24),
              child: Center(
                child: Text(
                  'Testimonials placeholder. Use genuine testimonials only.',
                ),
              ),
            ),
            SizedBox(height: 48),
            AppFooter(),
          ],
        ),
      ),
    );
  }
}
