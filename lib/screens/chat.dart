import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Color _buttonColor1 = Colors.grey;
  Color _buttonColor2 = Colors.grey;
  Color _buttonColor3 = Colors.grey;

  void _changeColor(int buttonNumber) {
    setState(() {
      _buttonColor1 = Colors.grey;
      _buttonColor2 = Colors.grey;
      _buttonColor3 = Colors.grey;
      if (buttonNumber == 1) {
        _buttonColor1 = Colors.blue;
      } else if (buttonNumber == 2) {
        _buttonColor2 = Colors.blue;
      } else if (buttonNumber == 3) {
        _buttonColor3 = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final userEmail = user.email;

    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterChat'),
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('$userEmail logged in!'),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _changeColor(1);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _buttonColor1,
                  ),
                  child: const Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _changeColor(2);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _buttonColor2,
                  ),
                  child: const Text('Button 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _changeColor(3);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _buttonColor3,
                  ),
                  child: const Text('Button 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
