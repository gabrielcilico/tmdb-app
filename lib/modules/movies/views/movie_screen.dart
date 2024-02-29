import 'package:flutter/material.dart';

class MovieScreen extends StatefulWidget {
  final int movieId;

  const MovieScreen({Key? key, required this.movieId}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie details'),
      ),
      body: Center(
        child: Text('Movie ${widget.movieId} details'),
      ),
    );
  }
}