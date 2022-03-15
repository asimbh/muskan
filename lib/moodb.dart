import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dash.dart';

class mood extends StatefulWidget {
  @override
  State<mood> createState() => _moodState();
}

class _moodState extends State<mood> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFefeef3),
    body: SingleChildScrollView(
    child: Column(
    children: [
    Container(
    alignment: Alignment.topLeft,
    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: IconButton(
    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => dash()));},
    icon: Icon(Icons.home, size: 30,),
    )
    ),
    SizedBox(height: (20),),

    Container(
    child: TableCalendar(focusedDay: focusedDay, firstDay: DateTime(1990), lastDay: DateTime(2080),
    calendarFormat: format,
    onFormatChanged: (CalendarFormat _format){
    setState(() {
    });(() {
    format = _format;
    }
    );
    },
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekVisible: true, onDaySelected: (DateTime selectDay, DateTime focusDay){
      setState(() {
        selectedDay = selectDay;
        focusedDay = focusDay;
      });
      print(focusedDay);
      },
      selectedDayPredicate: (DateTime date){
        return isSameDay(selectedDay, date);
      },

      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
          color: Colors.blue, shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(color: Colors.white), todayDecoration: BoxDecoration( color: Colors.purpleAccent, shape: BoxShape.circle,),
      ),

    )
    ),
      SizedBox(height: (220),),
      Container(
        width: 360,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),

        child: TextField(
          decoration: InputDecoration(
              hintText: "Today's Mood Entry" ,
              prefixIcon: Icon(Icons.mood, color: Colors.black,),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
              )
          ),
        ),
      ),
    ]
    ),
    )

    );
  }
}

