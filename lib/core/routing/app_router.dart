import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../pages/home/home_page.dart';
import '../../pages/about/about_page.dart';
import '../../pages/courses/courses_page.dart';
import '../../pages/instructors/instructors_page.dart';
import '../../pages/vehicles/vehicles_page.dart';
import '../../pages/gallery/gallery_page.dart';
import '../../pages/testimonials/testimonials_page.dart';
import '../../pages/faq/faq_page.dart';
import '../../pages/contact/contact_page.dart';
import '../../pages/services/services_page.dart';
import '../../pages/privacy/privacy_page.dart';
import '../../pages/terms/terms_page.dart';
import '../../pages/road_signs/road_signs_page.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/about', builder: (context, state) => const AboutPage()),
      GoRoute(
        path: '/courses',
        builder: (context, state) => const CoursesPage(),
      ),
      GoRoute(
        path: '/services',
        builder: (context, state) => const ServicesPage(),
      ),
      GoRoute(
        path: '/road-signs',
        builder: (context, state) => const RoadSignsPage(),
      ),
      GoRoute(
        path: '/instructors',
        builder: (context, state) => const InstructorsPage(),
      ),
      GoRoute(
        path: '/vehicles',
        builder: (context, state) => const VehiclesPage(),
      ),
      GoRoute(
        path: '/gallery',
        builder: (context, state) => const GalleryPage(),
      ),
      GoRoute(
        path: '/testimonials',
        builder: (context, state) => const TestimonialsPage(),
      ),
      GoRoute(path: '/faq', builder: (context, state) => const FaqPage()),
      GoRoute(
        path: '/privacy',
        builder: (context, state) => const PrivacyPage(),
      ),
      GoRoute(path: '/terms', builder: (context, state) => const TermsPage()),
      GoRoute(
        path: '/contact',
        builder: (context, state) => const ContactPage(),
      ),
    ],
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('404 - Page not found'))),
  );
}
