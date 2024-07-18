import 'package:flutter/material.dart';
import 'screens/onboarding.dart';
import 'screens/login.dart';
import 'screens/home.dart';
import 'screens/register.dart';
import 'screens/rescue.dart';
import 'screens/animal_care.dart';
import 'screens/consultation.dart';
import 'screens/education.dart';
import 'screens/chat_admin.dart';
import 'screens/notifications.dart';
import 'screens/settings.dart';
import 'screens/lost_and_found.dart';
import 'screens/community_forum.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rescue Animals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/rescue': (context) => RescueScreen(),
        '/animal_care': (context) => AnimalCareScreen(),
        '/consultation': (context) => ConsultationScreen(),
        '/education': (context) => EducationScreen(),
        '/chat_admin': (context) => ChatAdminScreen(),
        '/notifications': (context) => NotificationsScreen(),
        '/settings': (context) => SettingsScreen(),
        '/lost_and_found': (context) => LostAndFoundScreen(),
        '/community_forum': (context) => CommunityForumScreen(),
        // Ensure you have a route for profile if used
        // '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
