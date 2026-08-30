import 'package:flutter/material.dart';
import '../../widgets/section_title.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/cards/course_card.dart';
import '../../widgets/footer/app_footer.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = [
      {
        'title': 'Beginner Driving',
        'desc': 'For people learning to drive for the first time.',
      },
      {
        'title': 'Manual Driving',
        'desc': 'Learn to operate manual transmission vehicles.',
      },
      {
        'title': 'Automatic Driving',
        'desc': 'Learn to drive automatic vehicles safely.',
      },
      {
        'title': 'Refresher Driving',
        'desc': 'Improve confidence and practical driving skills.',
      },
    ];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(
              title: 'Driving Courses',
              subtitle: 'Choose the course that suits you',
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: courses.length,
                itemBuilder: (context, index) => CourseCard(
                  title: courses[index]['title']!,
                  description: courses[index]['desc']!,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}
