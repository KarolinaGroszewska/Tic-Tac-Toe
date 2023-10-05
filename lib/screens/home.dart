import 'package:flutter/material.dart';
import 'multiplayer.dart';
import '/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.accentColor,
      appBar: AppBar(
        title: const Text('Tic-Tac-Toe'),
        backgroundColor: MainColor.primaryColor,      
        ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: MainColor.primaryColor
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MultiplayerScreen()),
                );
              },
              child: const Text('Multiplayer Mode'),
            ),
          ],
        ),
      ),
    );
  }
}
