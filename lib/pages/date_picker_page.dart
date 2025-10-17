import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../utils.dart';
import '../widget/button_widget.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePicker> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDatePicker(),
          const SizedBox(height: 24),
          ButtonWidget(
            onClicked: () => Utils.showSheet(
              context,
              child: buildDatePicker(),
              onClicked: () {
                final value = DateFormat('yyyy-MM-dd').format(dateTime);
                Utils.showSnackBar(context, 'Date: $value');
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    ),
  );

  Widget buildDatePicker() => SizedBox(
    height: 180,
    child: CupertinoDatePicker(
      minimumYear: 2015,
      maximumYear: 2050,
      initialDateTime: dateTime,
      mode: CupertinoDatePickerMode.date,
      onDateTimeChanged: (dateTime) => setState(() => this.dateTime = dateTime),
    ),
  );
}
