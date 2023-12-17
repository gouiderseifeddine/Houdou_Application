import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'days/lundi_screen.dart';

class CourseDetailScreen extends StatelessWidget {
  final CourseModel course;

  CourseDetailScreen({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Details du cours',style: TextStyle(fontSize: 26),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text(
                          course.courseName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Time: ${course.courseStartTime.format(context)} - ${course.courseEndTime.format(context)}',
                          style: TextStyle(
                            fontSize: 20, color: Color(0xff929398) , fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'Place: ${course.place}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff98989b)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 80,),
                  Container(
                    width: 92,
                    height: 92,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(course.coachPicture),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text(
                  '${course.coachName}',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF757373),
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:22.0),
                child: Text(
                  '${course.coachBio}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff9a9e9f)
                  ),
                ),
              ),
              ///description


              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text(
                  'DESCRIPTION',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF757373),
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:22.0),
                child: Text(
                  '${course.courseDescription}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9a9e9f)
                  ),
                ),
              ),

              ///address

              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Text(
                  'ADRESSE',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF757373),
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:22.0),
                child: Text(
                  '${course.courseAddress}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9a9e9f)
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left:22.0),
                child: Text(
                  '77 bis Avenus Fattouma Bourguiba',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9a9e9f)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:22.0),
                child: Text(
                  'La Soukra - Tunis',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9a9e9f)
                  ),
                ),
              ),

              SizedBox(height: 50,),
              Center(
                child: Container(
                  height: 200,
                  width: 400,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(20,20),
                      zoom: 14.0,
                    ),
                    markers: {
                      Marker(
                        markerId: MarkerId('course_location'),
                        position: LatLng(20.00042,20.000003),
                        infoWindow: InfoWindow(
                          title: 'Course Location',
                        ),
                      ),
                    },
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'MATERIEL',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF757373),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Tapis de Yoga',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9a9e9f)
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'DISCIPLINE',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF757373),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Hatha Yoga',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9a9e9f)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50,)

            ],
          ),
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
        return "Pending";
      case CourseStatus.reserved:
        return "Réservé";
      case CourseStatus.canceled:
        return "Annulé";
    }
  }

  Color _getStatusColor(CourseStatus status) {
    switch (status) {
      case CourseStatus.pending:
        return Colors.orange;
      case CourseStatus.reserved:
        return Colors.green;
      case CourseStatus.canceled:
        return Colors.red;
    }
  }
}
