import 'package:flutter/material.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/footer/app_footer.dart';

class InstructorsPage extends StatelessWidget {
  const InstructorsPage({super.key});

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
                child: Text('Instructor profiles go here (use real data).'),
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
