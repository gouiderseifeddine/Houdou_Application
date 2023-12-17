import 'package:flutter/material.dart';


class SamediScreen extends StatefulWidget {
  const SamediScreen({Key? key}) : super(key: key);

  @override
  _SamediScreenState createState() => _SamediScreenState();
}

class _SamediScreenState extends State<SamediScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
        child: Text("Samedi"),
      ),
    );  }
}
