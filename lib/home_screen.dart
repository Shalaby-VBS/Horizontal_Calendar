import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff85FFBD),
              Color(0xffFFFB7D),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.black,
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                setState(() {
                  selectedValue = date;
                });
              },
            ),
            const SizedBox(height: 100),
            _buildSelectedDate(selectedValue),
          ],
        ),
      ),
    );
  }
}

_buildSelectedDate(DateTime selectedValue) {
  return Center(
    child: Text(
      selectedValue.day.toString(),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
