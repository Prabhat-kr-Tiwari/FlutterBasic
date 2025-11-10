import 'package:flutter/material.dart';

void main() {
  runApp(DatepickerWidget());
}

class DatepickerWidget extends StatelessWidget {
  const DatepickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Picker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true, // default, optional
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            fontSize: 21,
            fontFamily: 'MomoSignatureFont',
            fontWeight: FontWeight.bold,
          ),
          labelSmall: TextStyle(
            fontSize: 11,
            fontFamily: 'MomoSignatureFont',
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: DatePickerScreen(),
    );
  }
}

class DatePickerScreen extends StatefulWidget {
  @override
  State<DatePickerScreen> createState() => _CurrentdateandtimeScreenState();
}

class _CurrentdateandtimeScreenState extends State<DatePickerScreen> {
  var datePicked = "";
  var timePicked = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date Picker ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              datePicked.isEmpty
                  ? "No Date Selected"
                  : "Selected Date: $datePicked",
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              timePicked.isEmpty
                  ? "No Time Selected"
                  : "Selected Time: $timePicked",
              style: const TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicker = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2125),
                );

                if (datePicker != null) {
                  setState(() {
                    datePicked =
                    "${datePicker.day}/${datePicker.month}/${datePicker.year}";                  });
                }
              },
              child: Text("Select Date"),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timeOfDay = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input
                );

                if (timeOfDay != null) {
                  setState(() {
                    timePicked =
                        "${timeOfDay.hour}  ${timeOfDay.minute}" ;                  });
                }
              },
              child: Text("Select Time"),
            ),

          ],
        ),
      ),
    );
  }
}
