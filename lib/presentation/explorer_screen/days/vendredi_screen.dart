import 'package:flutter/material.dart';


class VendrediScreen extends StatefulWidget {
  const VendrediScreen({Key? key}) : super(key: key);

  @override
  _VendrediScreenState createState() => _VendrediScreenState();
}

class _VendrediScreenState extends State<VendrediScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
        child: Text("Vendredi"),
      ),
    );  }
}
