import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/components/PlaySongHeaderButton.dart';
import 'package:music_app/components/SongAndVolume.dart';
import 'package:music_app/components/SongControllerButton.dart';
import 'package:music_app/components/SongDetails.dart';
import 'package:music_app/components/SongWave.dart';

class PlaySongPage extends StatelessWidget {
  const PlaySongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
            SizedBox(height: 10),
            PlaySongHeaderButton(),
              SizedBox(height: 10),
              SongAndVolume(),
              SizedBox(height: 20),
              SongDetails(),
              SizedBox(height: 10),
              Spacer(),
              SongControllerButton(),
            ],
          ),
        ),
      ),
    );
  }
}
