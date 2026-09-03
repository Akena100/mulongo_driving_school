import 'package:flutter/material.dart';
import '../../widgets/navigation/app_header.dart';
import '../../widgets/footer/app_footer.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: const [
              SizedBox(height: 24),
              Text(
                'Frequently Asked Questions',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Find answers to common questions about our driving lessons',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(height: 40),

              // Registration & Enrollment
              _FaqSection(title: 'Registration & Enrollment'),
              ExpansionTile(
                title: Text('How do I register for driving lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'You can register by contacting us through:\n'
                      '• Phone: +256 776 320253\n'
                      '• WhatsApp: +256 776 320253\n'
                      '• Email: mulongodrivingschools1@gmail.com\n'
                      '• Visit our contact page and fill out the form\n\n'
                      'Our team will confirm your enrollment and schedule your first lesson.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'What are the age requirements for driving lessons?',
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Students must be at least 18 years old to enroll in our driving lessons. You\'ll need a valid national ID or passport for registration.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Do I need a learner\'s permit to start lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'For beginners, a learner\'s permit is required to legally practice on public roads. We can guide you through the process.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Courses & Lessons'),
              ExpansionTile(
                title: Text('What types of driving courses do you offer?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'We offer:\n'
                      '• Beginner driving course (for complete beginners)\n'
                      '• Refresher course (for drivers who need practice)\n'
                      '• Advanced driving techniques\n'
                      '• Manual and automatic transmission lessons\n'
                      '• City driving and highway driving courses',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('How long are individual lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Standard lessons are 1/2 hour (30 minutes). We also offer:\n'
                      '• Flexible scheduling to match your needs\n\n'
                      'Each lesson includes both practical driving and instructor feedback.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'How many lessons do I need to become a safe driver?',
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'It varies by individual, but most beginners benefit from:\n'
                      '• 20-30 lessons to gain basic competency\n'
                      '• Additional lessons for confidence building\n\n'
                      'Our instructors will assess your progress and recommend the right number of lessons for your goals.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Do you offer automatic and manual transmission lessons?',
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes! We offer both:\n'
                      '• Automatic transmission (easier for beginners)\n'
                      '• Manual transmission (more control)\n\n'
                      'You can choose based on your preference or what you plan to drive.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Pricing & Payment'),
              ExpansionTile(
                title: Text('How much do driving lessons cost?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Pricing is competitive and affordable. For detailed pricing:\n'
                      '• Contact us via phone or WhatsApp\n'
                      '• Email: mulongodrivingschools1@gmail.com\n\n'
                      'We offer package discounts for bulk lesson bookings.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Do you offer package deals or discounts?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes! We offer:\n'
                      '• Discounts on lesson packages (5, 10, 20+ lessons)\n'
                      '• Group rates for multiple students\n'
                      '• Special rates for corporate training\n\n'
                      'Contact us to discuss your specific needs.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('What payment methods do you accept?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'We accept multiple payment methods:\n'
                      '• Cash\n'
                      '• Mobile money (MTN Mobile Money, Airtel Money)\n'
                      '• Bank transfer\n'
                      '• Payment plans available\n\n'
                      'Flexible payment options to suit your convenience.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Instructors & Vehicles'),
              ExpansionTile(
                title: Text('Are your instructors experienced and certified?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes! All our instructors:\n'
                      '• Are fully licensed and certified\n'
                      '• Have years of professional driving experience\n'
                      '• Have completed advanced instructor training\n'
                      '• Are patient and experienced with all skill levels',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('What vehicles do you use for lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Our lesson vehicles are:\n'
                      '• Well-maintained and regularly serviced\n'
                      '• Equipped with dual controls for safety\n'
                      '• Available in both automatic and manual\n'
                      '• Comfortable for learning\n\n'
                      'Student safety is our top priority.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Can I request a specific instructor?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes, you can request an instructor based on:\n'
                      '• Gender preference\n'
                      '• Teaching style preference\n'
                      '• Language\n\n'
                      'We\'ll do our best to accommodate your preferences.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Scheduling & Flexibility'),
              ExpansionTile(
                title: Text('What are your operating hours?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'We offer flexible scheduling:\n'
                      '• Morning lessons\n'
                      '• Afternoon lessons\n'
                      '• Evening lessons\n'
                      '• Weekend lessons available\n\n'
                      'Contact us to find a time that works for you.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Can I reschedule my lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes! We understand that schedules change.\n'
                      '• Reschedule with at least 24 hours notice\n'
                      '• No penalty for reasonable changes\n'
                      '• Contact us via phone or WhatsApp\n\n'
                      'We\'ll work with you to find a convenient time.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Learning & Preparation'),
              ExpansionTile(
                title: Text('What should I expect in my first lesson?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Your first lesson will include:\n'
                      '• Meet with your instructor\n'
                      '• Vehicle familiarization\n'
                      '• Basic controls and safety features\n'
                      '• Gentle introduction to driving\n'
                      '• Feedback and next steps\n\n'
                      'No pressure — we start at your pace.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Do you help with driving test preparation?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes! We offer:\n'
                      '• Practical test preparation lessons\n'
                      '• Mock driving tests\n'
                      '• Test route familiarization\n'
                      '• Tips and techniques for passing\n\n'
                      'We prepare you for success on your driving test.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Do I need to bring anything to my lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Please bring:\n'
                      '• Valid ID (National ID or Passport)\n'
                      '• Learner\'s permit (if you have one)\n'
                      '• Comfortable shoes suitable for driving\n'
                      '• Positive attitude!\n\n'
                      'Everything else is provided.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Safety & Policies'),
              ExpansionTile(
                title: Text('What is your cancellation policy?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Cancellation policy:\n'
                      '• Cancel with 24+ hours notice: No charge\n'
                      '• Cancel with less than 24 hours: 50% charge\n'
                      '• No-show: Full lesson charge applies\n\n'
                      'We understand emergencies happen — contact us immediately.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Is it safe to learn driving during lessons?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Absolutely! Safety is our priority:\n'
                      '• Dual control systems in all vehicles\n'
                      '• Instructor can control the vehicle at any time\n'
                      '• Professional safety equipment\n'
                      '• Comprehensive insurance coverage\n'
                      '• Strict adherence to traffic laws',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
              _FaqSection(title: 'Other Questions'),
              ExpansionTile(
                title: Text('Do you offer corporate or group training?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Yes! We offer customized programs for:\n'
                      '• Corporate employees\n'
                      '• School groups\n'
                      '• Family members\n'
                      '• Special training needs\n\n'
                      'Contact us for group quotes and scheduling.',
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('What if I don\'t see my question answered here?'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'We\'re here to help! Contact us:\n'
                      '• Phone: +256 776 320253\n'
                      '• WhatsApp: +256 776 320253\n'
                      '• Email: mulongodrivingschools1@gmail.com\n'
                      '• Visit our contact page\n\n'
                      'Our team is happy to answer any questions.',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 48),
              AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}

class _FaqSection extends StatelessWidget {
  final String title;

  const _FaqSection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
