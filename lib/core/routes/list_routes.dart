enum AppRoutes{
  getStarted('/', 'getStarted'),
  login('/login', 'getStarted');

  const AppRoutes(this.path, this.name);

  final String path;
  final String name;
}