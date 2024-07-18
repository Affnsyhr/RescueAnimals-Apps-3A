import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// A screen that displays an onboarding carousel to introduce the user to the app.
class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(height: MediaQuery.of(context).size.height),
        items: [
          OnboardingSlide(
            image: 'assets/logo.jpeg',
            title: 'Rescue Animals',
            description: 'Welcome to Rescue Animals App!',
          ),
          OnboardingSlide(
            image: 'assets/animal_shelters.jpeg',
            title: 'About Us',
            description: 'Be a hero for our furry friends in distress',
          ),
          OnboardingSlide(
            image: 'assets/next.png',
            title: 'Get Started',
            description: 'Swipe to continue.',
            isLast: true,
          ),
        ],
      ),
    );
  }
}

/// A single slide in the onboarding carousel.
class OnboardingSlide extends StatelessWidget {
  /// The image to display on the slide.
  final String image;

  /// The title of the slide.
  final String title;

  /// The description of the slide.
  final String description;

  /// Whether this is the last slide in the carousel.
  final bool isLast;

  /// Creates a new [OnboardingSlide].
  const OnboardingSlide({
    required this.image,
    required this.title,
    required this.description,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(height: 20),
        Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text(description, textAlign: TextAlign.center),
        if (isLast)
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: Text('Get Started'),
          ),
      ],
    );
  }
}