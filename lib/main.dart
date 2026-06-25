import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/leagues_screen.dart';
import 'screens/watch_screen.dart';
import 'screens/more_screen.dart';

void main() => runApp(const FadaaTVApp());

class FadaaTVApp extends StatelessWidget {
  const FadaaTVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const LeaguesScreen(),
    const WatchScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.white60,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'البطولات'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill), label: 'البث'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'المزيد'),
        ],
      ),
    );
  }
}
