import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'CoverPic.dart';
import 'ProfilePic.dart';
import 'package:day_picker/day_picker.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class Body extends StatelessWidget {
  List<DayInWeek> _days = [
    DayInWeek(
      "Sun",
    ),
    DayInWeek(
      "Mon",
    ),
    DayInWeek(
        "Tue",
        isSelected: true
    ),
    DayInWeek(
      "Wed",
    ),
    DayInWeek(
      "Thu",
    ),
    DayInWeek(
      "Fri",
    ),
    DayInWeek(
      "Sat",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CoverPic(),
        ProfilePic(),
        SizedBox(height: 10,),
        Row(
          children: [
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 100 , vertical: 5 ),
              child:ClayContainer(color: Colors.white70,
                borderRadius: 20,
                height: 50,
                width: 200,
              child: Text("Duha Mohsen",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
          ],
        ),
        SizedBox(height: 10),
        Center(
          child: Text("Python Instructor", style: TextStyle(color: Color(0xFFD4957D), fontWeight: FontWeight.w600),),
        ),
        SizedBox(height: 10),
        Center(
          child: ClayContainer(color: Colors.white70,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.white70,
                  child: const Center(child: Text('22 years old',)),
                ),
                Container(
                  height: 50,
                  color: Colors.white70,
                  child: const Center(child: Text('Mansoura')),
                ),
                Container(
                  height: 50,
                  color: Colors.white70,
                  child: const Center(child: Text('DuhaMohsen@gmail.com')),
                ),
              ],
            ),
            height: 180,
            width: 250,
          ),

        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectWeekDays(
              fontSize:14,
              fontWeight: FontWeight.w500,
              days: _days,
              border: false,
              boxDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [const Color(0xFFD4957D), const Color(0xFFDEDAD8)],
                  tileMode:
                  TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              onSelect: (values) { // <== Callback to handle the selected days
                print(values);
              },
            ),
          ),
        ),
        Center(
          child: AnimatedButton(
            height: 70,
            width: 200,
            text: 'Book Meeting',
            isReverse: true,
            selectedTextColor: Color(0xFFD4957D),
            transitionType: TransitionType.LEFT_TO_RIGHT,
            backgroundColor: Color(0xFFD4957D),
            borderColor: Color(0xFFDEDAD8),
            borderRadius: 50,
            borderWidth: 2, onPress: () {  },
          ),
        )
      ],

    );
  }
}
