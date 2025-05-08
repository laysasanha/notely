import 'package:notely/screens/profile.dart';

enum AppRoutes{
  getStarted('/', 'getStarted'),
  createAccount('/createAccount', 'createAccount'),
  login('/login', 'login'),
  notes('/notes', 'notes'),
  profile('/profile', 'profile');

  const AppRoutes(this.path, this.name);

  final String path;
  final String name;
}