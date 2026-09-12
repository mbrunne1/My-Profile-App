import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  final List<String> hobbies = const [
  'Track & Field (Decathlon)',
  'Rock Climbing',
  'Cosplay & Costume Building',
  'Gaming (Minecraft)',
  'Collecting LEGO Sets',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Hobbies'),
      ),
      body: ListView.builder(
        itemCount: hobbies.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: Text('${index + 1}'),
            ),
            title: Text(hobbies[index]),
          );
        },
      ),
    );
  }
}