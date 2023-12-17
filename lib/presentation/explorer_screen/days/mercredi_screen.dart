import 'package:flutter/material.dart';



class MercrediScreen extends StatefulWidget {
  const MercrediScreen({Key? key}) : super(key: key);

  @override
  _MercrediScreenState createState() => _MercrediScreenState();
}

class _MercrediScreenState extends State<MercrediScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
        child: Text("Mercredi"),
      ),
    );  }
}
