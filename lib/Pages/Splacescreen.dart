import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splacescreen extends StatelessWidget {
  const Splacescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset("assets/icons/Music.jpg")),
    );
  }
}
