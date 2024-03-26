import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';


ValueNotifier<String> selecteddate = ValueNotifier('Select Date of Birth');


class DateOfBirth extends StatelessWidget {
  DateOfBirth({Key? key});
  
   // Initialize selecteddate with a default value
  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: DatePickerWidget(
            looping: false,
            firstDate: DateTime(1960, 01, 01),
            lastDate: DateTime.now(),
            initialDate: DateTime(2000, 10, 10),
            dateFormat: "dd-MMM-yyyy", // Changed "mmm" to "MMM" for correct month format
            locale: DatePicker.localeFromString('en'),
            onChange: (dateTime, _) {
              selecteddate.value = dateTime.toString();
            },
            pickerTheme: DateTimePickerTheme(
              itemTextStyle: TextStyle(color: Colors.black, fontSize: 19),
              dividerColor: Colors.blue,
            ),
          ),
        ),
      );
  }
}
