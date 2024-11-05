import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          SvgPicture.asset("assets/icons/music_play_icon.jpg"),
          const SizedBox(width: 10),

          Text("210 Plays",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              "Ishq tera lae dooba",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset("assets/icons/heartmusic.jpg"),
            SizedBox(width: 10),
            SvgPicture.asset("assets/icons/downloadmusic.jpg"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sunidhi Chauhan",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        )
      ],
    );
  }
}
