import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool s1 = false;
  bool s2 = false;
  bool s3 = false;
  bool s4 = false;
  bool s5 = false;
  @override
  Widget build(BuildContext context) {
    var color;

    return LayoutBuilder(
        builder: (BuildContext contex, BoxConstraints constrains) {
      if (constrains.maxWidth > 1440 && constrains.maxWidth <= 2560) {
        s1 = true;
        s2 = false;
        s3 = false;
        s4 = false;
        s5 = false;
        color = Color.fromRGBO(28, 187, 41, 1);
      } else if (constrains.maxWidth > 1024 && constrains.maxWidth <= 1440) {
        s1 = true;
        s2 = false;
        s3 = false;
        s4 = false;
        s5 = false;
        color = Color.fromRGBO(0, 63, 199, 1);
      } else if (constrains.maxWidth > 768 && constrains.maxWidth <= 1024) {
        s1 = true;
        s2 = false;
        s3 = false;
        s4 = false;
        s5 = false;
        color = Colors.blue;
      } else if (constrains.maxWidth > 425 && constrains.maxWidth <= 768) {
        s1 = false;
        s2 = true;
        s3 = false;
        s4 = false;
        s5 = false;
        color = Colors.orange;
      } else if (constrains.maxWidth > 375 && constrains.maxWidth <= 425) {
        s1 = false;
        s2 = false;
        s3 = true;
        s4 = false;
        s5 = false;
        color = Colors.pink;
      } else if (constrains.maxWidth > 320 && constrains.maxWidth <= 375) {
        s1 = false;
        s2 = false;
        s3 = false;
        s4 = true;
        s5 = false;
        color = Colors.yellow;
      } else if (constrains.maxWidth <= 320) {
        s1 = false;
        s2 = false;
        s3 = false;
        s4 = false;
        s5 = true;
        color = Colors.blue;
      }

      return Scaffold(
        body: Center(
          child: Container(
            color: color,
          ),
        ),
      );
    });
  }
}
