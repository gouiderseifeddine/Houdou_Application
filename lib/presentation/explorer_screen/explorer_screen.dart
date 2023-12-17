import 'package:flutter/material.dart';
import 'package:houdou_app/core/utils/size_utils.dart';
import 'package:houdou_app/presentation/explorer_screen/filtres.dart';

import 'days/dimanche_screen.dart';
import 'days/jeudi_screen.dart';
import 'days/lundi_screen.dart';
import 'days/mardi_screen.dart';
import 'days/mercredi_screen.dart';
import 'days/samedi_screen.dart';
import 'days/vendredi_screen.dart';

class ExplorerScreen extends StatefulWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  _ExplorerScreenState createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      Tab(
        child: Column(
          children: [
            Text("Lun",style: TextStyle(fontSize: 10.adaptSize),),
            Text("01",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Text("Mar",style: TextStyle(fontSize: 10.adaptSize),),
            Text("02",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Text("Mer",style: TextStyle(fontSize: 10.adaptSize),),
            Text("03",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Text("Jeu",style: TextStyle(fontSize: 10.adaptSize),),
            Text("04",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Text("Ven",style: TextStyle(fontSize: 10.adaptSize),),
            Text("05",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Text("Sam",style: TextStyle(fontSize: 10.adaptSize),),
            Text("06",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
      Tab(
        child: Column(
          children: [
            Text("Dim",style: TextStyle(fontSize: 10.adaptSize),),
            Text("07",style: TextStyle(fontSize: 12.adaptSize),),
          ],
        ),
      ),
    ];

    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding:  EdgeInsets.only(top: 12.0.v, bottom: 12.v, left: 30.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1)),
              child: InkWell(
                onTap: () {
                  //TODO FILTRES
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FiltrePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.filter_alt),
                      SizedBox(
                        width: 4,
                      ),
                      Text("filtres", style: TextStyle(color: Colors.black))
                    ],
                  ),
                ),
              ),
            ),
          ),
          leadingWidth: 120.h,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: Color(0xffd7cc8d),
            tabs: [
              screens[0],
              screens[1],
              screens[2],
              screens[3],
              screens[4],
              screens[5],
              screens[6],
            ],
            labelColor: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 12.0.v, bottom: 12.v, right: 30.h),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1)),
                child: InkWell(
                  onTap: () {
                    //TODO LOCATION LA SOUKRA
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.h),
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_down),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "La soukra",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            LundiScreen(),
            MardiScreen(),
            MercrediScreen(),
            JeudiScreen(),
            VendrediScreen(),
            SamediScreen(),
            DimancheScreen(),
          ],
        ),
      ),
    );
  }
}
