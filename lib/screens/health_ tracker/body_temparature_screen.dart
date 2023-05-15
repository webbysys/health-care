import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';

class BodyTemparatureScreen extends StatefulWidget {
  const BodyTemparatureScreen({Key? key}) : super(key: key);

  @override
  State<BodyTemparatureScreen> createState() => _BodyTemparatureScreenState();
}

class _BodyTemparatureScreenState extends State<BodyTemparatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppDefaultBar(title: "GLUCOSE TRACKER", userNAme: " userNAme"),
          const SizedBox(
            height: 8,
          ),

        ],
      ),
    );
  }
}
