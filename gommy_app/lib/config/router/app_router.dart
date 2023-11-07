import 'package:go_router/go_router.dart';
import 'package:gommy_app/presetation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: MainUserScreen.name,
      builder: ((context, state) => const MainUserScreen())
    ),
    GoRoute(
      path: '/activities',
      name: ActivitiesScreen.name,
      builder: ((context, state) => const ActivitiesScreen())
    ),
    GoRoute(
      path: '/config',
      name: ConfigUserScreen.name,
      builder: ((context, state) => const ConfigUserScreen())
    ),
    GoRoute(
      path: '/create-account',
      name: CreateAccountScreen.name,
      builder: ((context, state) => const CreateAccountScreen())
    ),
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: ((context, state) => const LoginScreen())
    ),
    GoRoute(
      path: '/profile',
      name: ProfileUserScreen.name,
      builder: ((context, state) => const ProfileUserScreen())
    ),
  ]

);
