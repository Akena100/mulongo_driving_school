import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBEd04-FhDn4ZbaXRu_PI30gqoULXJ-TC8',
      appId: '1:919711010525:web:477b7edf51f30ba2cdd534',
      messagingSenderId: '919711010525',
      projectId: 'mulongodrivingskul',
      authDomain: 'mulongodrivingskul.firebaseapp.com',
      storageBucket: 'mulongodrivingskul.firebasestorage.app',
      measurementId: 'G-BMJBTEX4G5',
    ),
  );
  FirebaseAnalytics.instance;

  runApp(const ProviderScope(child: MyApp()));
}
