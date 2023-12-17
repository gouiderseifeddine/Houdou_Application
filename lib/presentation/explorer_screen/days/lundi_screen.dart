import 'package:flutter/material.dart';
import 'package:houdou_app/core/utils/size_utils.dart';

import '../course_detail_screen.dart';

enum CourseStatus { pending, reserved, canceled }

class CourseModel {
  final String courseName;
  final DateTime courseDate;
  final TimeOfDay courseStartTime;
  final TimeOfDay courseEndTime;
  final CourseStatus courseStatus;
  final String coachName;
  final String coachPicture;
  final String coachBio;
  final String place;
  final String courseDescription;
  final String courseAddress;

  CourseModel({
    required this.courseName,
    required this.courseDate,
    required this.courseStartTime,
    required this.courseEndTime,
    required this.courseStatus,
    required this.coachName,
    required this.coachPicture,
    required this.coachBio,
    required this.place,
    required this.courseDescription,
    required this.courseAddress,
  });
}

class LundiScreen extends StatefulWidget {
  const LundiScreen({Key? key}) : super(key: key);

  @override
  _LundiScreenState createState() => _LundiScreenState();
}

class _LundiScreenState extends State<LundiScreen> {
  List<CourseModel> courses = [
    CourseModel(
      courseName: "YOGA VINYASA",
      courseDate: DateTime(2023, 5, 1),
      courseStartTime: TimeOfDay(hour: 18, minute: 0),
      courseEndTime: TimeOfDay(hour: 19, minute: 0),
      courseStatus: CourseStatus.reserved,
      coachName: "Olfa Mnahla",
      coachPicture: 'assets/images/splashscreen.jpg',
      coachBio: "Olfa Blablbalalbl blbalabl l bal bal blalbalb l labl blablblalbalbalb bl blaa  blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa",
      place: "La Soukra",
      courseDescription: "La yoga postural xoxoxoxo oxoxoxoxoox oxoxoxox oxoxo oxo ooxoo oxoxoxoo oxoxox oxooxo oxoxoxo ox o oxooxxox o xo xoxoxoxooxxo oxxoxoxox o xooxoxoxox o xoxo xo ox ox o xo xowowowo ",
      courseAddress: "Houdou Yoga Space",
    ),
    CourseModel(
      courseName: "YOGA VINYASA",
      courseDate: DateTime(2023, 5, 1),
      courseStartTime: TimeOfDay(hour: 18, minute: 0),
      courseEndTime: TimeOfDay(hour: 19, minute: 0),
      courseStatus: CourseStatus.canceled,
      coachName: "Olfa Mnahla",
      coachPicture: 'assets/images/splashscreen.jpg',
      coachBio: "Olfa Blablbalalbl blbalabl l bal bal blalbalb l labl blablblalbalbalb bl blaa  blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa",
      place: "La Soukra",
      courseDescription: "La yoga postural xoxoxoxo oxoxoxoxoox oxoxoxox oxoxo oxo ooxoo oxoxoxoo oxoxox oxooxo oxoxoxo ox o oxooxxox o xo xoxoxoxooxxo oxxoxoxox o xooxoxoxox o xoxo xo ox ox o xo xowowowo ",
      courseAddress: "Houdou Yoga Space",
    ),
    CourseModel(
      courseName: "YOGA VINYASA",
      courseDate: DateTime(2023, 5, 3),
      courseStartTime: TimeOfDay(hour: 18, minute: 0),
      courseEndTime: TimeOfDay(hour: 19, minute: 0),
      courseStatus: CourseStatus.pending,
      coachName: "Olfa Mnahla",
      coachPicture: 'assets/images/splashscreen.jpg',
      coachBio: "Olfa Blablbalalbl blbalabl l bal bal blalbalb l labl blablblalbalbalb bl blaa  blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa blaa",
      place: "La Soukra",
      courseDescription: "La yoga postural xoxoxoxo oxoxoxoxoox oxoxoxox oxoxo oxo ooxoo oxoxoxoo oxoxox oxooxo oxoxoxo ox o oxooxxox o xo xoxoxoxooxxo oxxoxoxox o xooxoxoxox o xoxo xo ox ox o xo xowowowo ",
      courseAddress: "Houdou Yoga Space",
    ),
    // Add more courses as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 20.0.h, right: 20.h),
        child: Column(
          children: [
            for (var courseDate in Set<DateTime>.from(courses.map((c) => c.courseDate)))
              Column(
                children: [
                  SizedBox(
                    height: 30.v,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    color: Color(0xffe7e3cd),
                    height: 40,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.0.h),
                      child: Text(
                        _getFormattedDate(courseDate),
                        style: TextStyle(
                          color: Color(0xFF887e7b),
                          fontSize: 18.adaptSize,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.v,
                  ),
                  for (var course in courses.where((c) => c.courseDate == courseDate))
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetailScreen(course: course),
                          ),
                        );
                      },
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 80.v,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      course.courseName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.adaptSize,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.v,
                                    ),
                                    Text(
                                      "${course.courseStartTime.format(context)} - ${course.courseEndTime.format(context)}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.adaptSize,
                                        color: Color(0xff88817b),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.v,
                                    ),
                                    Text(
                                      course.place,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.adaptSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 62.h,
                                    height: 62.v,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: AssetImage(course.coachPicture),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.v,
                                  ),
                                  Text(course.coachName)
                                ],
                              ),
                              Container(
                                width: 120.h,
                                height: 40.v,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(width: 2, color: const Color(0xFFeceae9)),
                                  color: course.courseStatus == CourseStatus.reserved
                                      ? const Color(0xFFe7e3cd)
                                      : course.courseStatus == CourseStatus.canceled
                                      ? Colors.red
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    _getStatusText(course.courseStatus),
                                    style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 1,
                                      fontSize: 14.adaptSize,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  String _getFormattedDate(DateTime date) {
    return "${date.day} ${_getMonthName(date.month)} ${date.year}";
  }

  String _getMonthName(int month) {
    return [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ][month - 1];
  }

  String _getStatusText(CourseStatus status) {
    switch (status) {
      case CourseStatus.pending:
        return "Réservez";
      case CourseStatus.reserved:
        return "Réservé";
      case CourseStatus.canceled:
        return "Annulé";
    }
  }
}
