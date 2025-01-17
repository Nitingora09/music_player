import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Config/Colors.dart';

class PlaySongHeaderButton extends StatelessWidget {
  const PlaySongHeaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,height: 40,
          padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: divColor,
          borderRadius: BorderRadius.circular(10),
        ),
          child: Center(
            child: SvgPicture.asset("assets/icons/backicon.jpg"),
          ),
        ),
        Container(
          width: 40, height: 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: divColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: SvgPicture.asset("assets/icons/settingicon.jpg"),
          ),
        )
      ],
    );
  }
}
