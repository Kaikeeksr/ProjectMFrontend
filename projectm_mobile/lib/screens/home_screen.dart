import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Map<String, dynamic> loginData;

  const HomeScreen({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Message: ${loginData['message']}'),
            Text('Status: ${loginData['status']}'),
            Text('Token: ${loginData['token']}'),
          ],
        ),
      ),
    );
  }
}
