import 'package:go_router/go_router.dart';
import 'package:notely/core/routes/list_routes.dart';
import 'package:notely/screens/create_account.dart';
import 'package:notely/screens/get_started.dart';

final GoRouter router = GoRouter(
    initialLocation: AppRoutes.getStarted.path,
    routes: [
      GoRoute(
        path: AppRoutes.getStarted.path,
        name: AppRoutes.getStarted.name,
        builder: (context, state) => const GetStartedScreen(),
      ),

      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        builder: (context, state) => const CreateAccount(),
      ),
    ]
);