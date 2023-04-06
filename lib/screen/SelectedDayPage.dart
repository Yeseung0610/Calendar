import 'package:flutter/material.dart';

class SelectedDayPage extends StatelessWidget {
  const SelectedDayPage({super.key, required this.selectedDay});

  final DateTime selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(selectedDay.day.toString(), style: const TextStyle(fontSize: 17, color: Colors.black)),
        ),
      ),
    );
  }
}