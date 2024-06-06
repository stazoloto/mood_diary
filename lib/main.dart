import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/screens/mood_diary.dart';
import 'package:test_project/screens/statistic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 253, 252, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GoRouter _router = GoRouter(
    initialLocation: '/mood_diary',
    routes: [
      GoRoute(
        path: '/mood_diary',
        builder: (context, state) => const MoodDiaryWidget(),
      ),
      GoRoute(
        path: '/statistics',
        builder: (context, state) => const StatistisWidget(),
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}
