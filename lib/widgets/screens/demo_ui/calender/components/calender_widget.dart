import 'dart:collection';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({super.key});

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  DateTime focusedDay =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  DateTime selectedDay = DateTime.now();
  List<Event> _getEventsForDay(DateTime day) {
  return events[day] ?? [];
}
final events = LinkedHashMap(
  equals: isSameDay,
  hashCode: (date)=>date.hashCode,
)..addAll({DateTime.now():'Ghode jatra'});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.51,
      width: double.maxFinite,
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      child: TableCalendar(
        daysOfWeekHeight: 15,
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(color: Colors.blue),
          weekendStyle: TextStyle(color: Colors.red),
        ),
        calendarStyle: CalendarStyle(
          markerSizeScale: 0.15,
          markerDecoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: Colors.green.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          holidayTextStyle: const TextStyle(color: Colors.red),
          holidayDecoration: const BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(
                color: Color.fromARGB(255, 241, 144, 137),
                width: 1.4,
              ),
            ),
            shape: BoxShape.circle,
          ),
        ),
        startingDayOfWeek: StartingDayOfWeek.sunday,
        headerStyle: HeaderStyle(
          formatButtonDecoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20.0),
          ),
          formatButtonTextStyle: TextStyle(color: Colors.white),
          formatButtonShowsNext: false,
        ),
        calendarFormat: CalendarFormat.month,
        firstDay: DateTime(
          1990,
        ),
        lastDay: DateTime(2050),
        focusedDay: focusedDay,
        onDaySelected: (selectDay, focuseDay) {
          setState(() {
            selectedDay = selectDay;
            focusedDay = focuseDay;
          });
          print(selectDay);
          print(focuseDay);
        },
        selectedDayPredicate: (day) {
          return isSameDay(selectedDay, day);
        },
      ),
    );
  }
}
