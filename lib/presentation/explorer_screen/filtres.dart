import 'package:flutter/material.dart';
import 'package:houdou_app/core/utils/size_utils.dart';

class FiltrePage extends StatefulWidget {
  const FiltrePage({Key? key}) : super(key: key);

  @override
  _FiltrePageState createState() => _FiltrePageState();
}

class _FiltrePageState extends State<FiltrePage> {
  String selectedLocation = 'La Soukra'; // Default value
  List<String> selectedTeachers = [];
  List<String> selectedCourses = [];
  String selectedLevel = '';
  List<String> selectedDurations = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.v,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200.h,
                  height: 50.v,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Color(0xFFeceae9)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: selectedLocation,
                            items: <String>[
                              'La Soukra',
                              'Gammarth',
                              'Carthage',
                              'Lac 1',
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(value, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedLocation = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    //TODO PRINT THE THE SELECTED VALUES OF MY FILTerS
                    printSelectedValues();
                  },
                  child: Container(
                    width: 120.h,
                    height: 50.v,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2, color: Color(0xFFeceae9)),
                      color: Color(0xffe7e3cd)
                    ),
                    child: Center(child: Text("Submit", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500))),
                  ),
                ),
              ],
            ),

            SizedBox(height: 60.v,),
            Padding(
              padding: const EdgeInsets.only(left: 28.0,top: 40),
              child: Container(
                width: 190.h,
                height: 60.v,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Color(0xFFeceae9)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.filter_alt_outlined,size: 35,),
                    SizedBox(width: 8.h,),
                    Text("Filtres", style: TextStyle(color: Colors.black, fontSize: 22.adaptSize, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18.0.h,top: 20.0.v),
              child: buildCheckboxSection(
                "Enseignants",
                ["Tatiana Mazina", "Olfa M", "Maryem Majoul", "Nadia Arfaoui", "Rania Sam", "Farah Gabsi"],
                selectedTeachers,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0.h,top: 20.0.v),
              child: buildCheckboxSection(
                "Cours",
                ["Hatha Yoga", "Yoga Vinyasa", "Bases de Yoga", "Yoga Antistress", "Pilates", "Qi Gong"],
                selectedCourses,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 18.0.h,top: 20.0.v),
              child: buildCheckboxSection(
                "Durée",
                ["05 minutes", "10 minutes", "20 minutes", "30 minutes"],
                selectedDurations,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18.0.h,top: 20.0.v),
              child: buildRadioSection(
                "Niveau",
                ["Débutant", "Intermédiaire", "Avancé", "Tous les niveaux"],
                selectedLevel,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCheckboxSection(String title, List<String> items, List<String> selectedList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Wrap(
          runSpacing: -30, // Adjust this value to change the spacing between checkboxes
          children: items.map((item) {
            return Container(
              width: 250.h,
              child: CheckboxListTile(
                title: Text(item),
                value: selectedList.contains(item),
                onChanged: (bool? value) {
                  setState(() {
                    if (value != null) {
                      if (value) {
                        selectedList.add(item);
                      } else {
                        selectedList.remove(item);
                      }
                    }
                  });
                },
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  void printSelectedValues() {
    print('Selected Location: $selectedLocation');
    print('Selected Teachers: $selectedTeachers');
    print('Selected Courses: $selectedCourses');
    print('Selected Level: $selectedLevel');
    print('Selected Durations: $selectedDurations');
  }

  Widget buildRadioSection(String title, List<String> items, String? selectedValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Column(
          children: items.map((item) {
            return Container(
              width: 250.h,
              child: RadioListTile<String>(
                title: Text(item),
                value: item,
                groupValue: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                    selectedLevel=selectedValue!;
                  });
                },
                contentPadding: EdgeInsets.all(-30),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
