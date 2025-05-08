import 'package:go_router/go_router.dart';
import 'package:notely/core/routes/list_routes.dart';
import 'package:notely/screens/create_account.dart';
import 'package:notely/screens/notes.dart';
import 'package:notely/screens/get_started.dart';
import 'package:notely/screens/login.dart';

import '../../screens/profile.dart';

final GoRouter router = GoRouter(
    initialLocation: AppRoutes.getStarted.path,
    routes: [
      GoRoute(
        path: AppRoutes.getStarted.path,
        name: AppRoutes.getStarted.name,
        builder: (context, state) => const GetStartedScreen(),
      ),

      GoRoute(
        path: AppRoutes.createAccount.path,
        name: AppRoutes.createAccount.name,
        builder: (context, state) => const CreateAccount(),
      ),

      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        builder: (context, state) => const Login(),
      ),

      GoRoute(
        path: AppRoutes.notes.path,
        name: AppRoutes.notes.name,
        builder: (context, state) => const Notes(),
      ),

      GoRoute(
        path: AppRoutes.profile.path,
        name: AppRoutes.profile.name,
        builder: (context, state) => const Profile(),
      ),
    ]
);