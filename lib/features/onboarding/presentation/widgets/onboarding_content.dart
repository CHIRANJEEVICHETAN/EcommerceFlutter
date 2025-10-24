
class OnboardingContent {
  final String title;
  final String description;
  final String image;

  OnboardingContent({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnboardingContent> onboardingContents = [
  OnboardingContent(
    title: 'Welcome to Avy',
    description: 'A new way to connect with your community',
    image: 'assets/images/onboarding1.png',
  ),
  OnboardingContent(
    title: 'Find What You Need',
    description: 'Discover local businesses and services',
    image: 'assets/images/onboarding2.png',
  ),
  OnboardingContent(
    title: 'Grow Your Business',
    description: 'Reach new customers and grow your business',
    image: 'assets/images/onboarding3.png',
  ),
];
