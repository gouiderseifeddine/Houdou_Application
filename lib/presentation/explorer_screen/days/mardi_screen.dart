import 'package:flutter/material.dart';


class MardiScreen extends StatefulWidget {
  const MardiScreen({Key? key}) : super(key: key);

  @override
  _MardiScreenState createState() => _MardiScreenState();
}

class _MardiScreenState extends State<MardiScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
        child: Text("Mardi"),
      ),
    );  }
}
