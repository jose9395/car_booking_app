import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({super.key});

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime _selectedDateTime = DateTime.now(); // Initial date and time

  // Method to show date picker
  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _selectedDateTime) {
      _selectTime(pickedDate);
    }
  }

  // Method to show time picker
  Future<void> _selectTime(DateTime pickedDate) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
    );

    if (pickedTime != null) {
      setState(() {
        _selectedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          _selectDate();
        },
        child: Row(
          children: [
          const  Icon(
              Icons.calendar_today,
              color: Colors.white,
              size: 12, // Adjust size as needed
            ),
           const  SizedBox(width: 8),
            Text(
              DateFormat('dd/MM/yyyy hh:mm a').format(_selectedDateTime),
              style:const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
    );
    // Background color to match text color
  }
}
