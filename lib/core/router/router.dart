import 'package:counter_app/features/counter/models/counter_model.dart';
import 'package:counter_app/features/counter/presentation/counter_detail_screen.dart';
import 'package:counter_app/features/counter/presentation/counter_screen.dart';
import 'package:counter_app/features/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/',
    name: 'home',
     builder: (context, state) => HomeScreen(),
     ),
    GoRoute(
      path: '/counter',
      name: 'counter',
      builder: (context, state) => CounterScreen(),
    ),
      GoRoute(
      path: '/counterDetailScreen',
      name: 'counterDetailScreen',
      builder: (context, state){
        final counter = state.extra as Counter;
        return CounterDetailScreen(counter: counter);
      },
    ),
  ],
);
