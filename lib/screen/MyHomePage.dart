import 'package:flutter/material.dart';
import 'package:main/screen/SelectedDayPage.dart';
import 'package:table_calendar/table_calendar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? oldSelectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: TableCalendar(
          onDaySelected: (selectDay, _) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectedDayPage(selectedDay: selectDay)));
          },
          focusedDay: DateTime.now(),
          firstDay: DateTime.now().add(const Duration(days: -1)),
          lastDay: DateTime.now().add(const Duration(days: 7),
        ),
      ),
    ));
  }
}
