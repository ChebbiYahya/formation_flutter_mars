import 'package:clone_spotify_mars/screens/login_page.dart';
import 'package:clone_spotify_mars/screens/routes_page.dart';
import 'package:clone_spotify_mars/screens/starting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Spotify', home: RoutesPage());
  }
}
