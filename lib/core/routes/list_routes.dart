enum AppRoutes{
  getStarted('/', 'getStarted'),
  createAccount('/createAccount', 'createAccount'),
  login('/login', 'login');

  const AppRoutes(this.path, this.name);

  final String path;
  final String name;
}