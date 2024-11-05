import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Config/Colors.dart';

class SongControllerButton extends StatelessWidget {
  const SongControllerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("3:40"),
            Text("/"),
            Text("3:40",style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/backmusic.jpg",width: 25,),
            SizedBox(width: 40),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: primaryColor,
              ),
              child: Center(
                child: SvgPicture.asset("assets/icons/playmusic.jpg",width: 25),
              ),
            ),
            SizedBox(width: 40),
            SvgPicture.asset("assets/icons/nextmusi.jpg",width: 25),
          ],
        ),
        SizedBox(height: 40),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(""),
            SvgPicture.asset(""),
            SvgPicture.asset(""),
            SvgPicture.asset(""),
          ],
        )
      ],
    );
  }
}
