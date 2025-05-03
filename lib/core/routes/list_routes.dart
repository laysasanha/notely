enum AppRoutes{
  getStarted('/', 'getStarted'),
  login('/createAccount', 'createAccount');

  const AppRoutes(this.path, this.name);

  final String path;
  final String name;
}