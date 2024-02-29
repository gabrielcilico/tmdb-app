import 'package:flutter/material.dart';
import 'package:tmdb_app/common/functions/navigator_service.dart';
import 'package:tmdb_app/modules/movies/movies_module.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((_) {
      pushNamed(routeName: MoviesModule.moviesRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
