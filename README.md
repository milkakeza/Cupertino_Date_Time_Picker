# CupertinoDatePicker & CupertinoTimePicker Demo

This Flutter project demonstrates how to use CupertinoDatePicker and CupertinoTimePicker, two iOS-style widgets for selecting dates and times with a clean look.



## Widgets Overview

### CupertinoDatePicker**

An iOS-style date picker that lets users select a date, time, or both.

### CupertinoTimePicker

An iOS-style time picker that allows users to choose hours and minutes smoothly, mimicking the iOS clock wheel.



## How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/<your-username>/cupertino_date_time_picker.git
   cd cupertino_date_time_picker
   ```

2. Get dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

Make sure you have a working Flutter setup before running the project.



## Three Key Attributes Explained

### 1. mode

Defines what the picker displays:

`CupertinoDatePickerMode.date` → Date only
`CupertinoDatePickerMode.time` → Time only
`CupertinoDatePickerMode.dateAndTime` → Both date and time

In this demo, we used all the three `CupertinoDatePickerMode.date,CupertinoDatePickerMode.time &CupertinoDatePickerMode.dateAndTime` to allow users to select both.



### 2. initialDateTime

Sets the default date and time shown when the picker opens.

```dart
initialDateTime: DateTime.now(),
```

This ensures the picker starts at the current date and time.



### 3. onDateTimeChanged

This callback triggers every time the user scrolls or changes the picker value.
It updates the state or variable with the new date/time:

```dart
onDateTimeChanged: (DateTime newDate) {
  setState(() => selectedDate = newDate);
},
```



## Screenshots

-[Date Picker Screenshot](assets/Date.png)
-[Time Picker Screenshot](assets/Time.png)
-[DateTime Picker Screenshot](assets/DateTime.png)

*(Make sure to replace this with your actual screenshot path)*



## Citation

Some parts of this code were inspired by Flutter documentation and community tutorials on [flutter.dev](https://api.flutter.dev/flutter/cupertino/CupertinoDatePicker-class.html).

I also used the guidance from the tutorial:
Flutter Cupertino Date and Time Picker Tutorial by Johannes Milke (YouTube, 2021)



## Author

Milka Keza Isingizwe
Flutter Developer | African Leadership University
📍 Rwanda
m.isingizwe1@alustudent.com
