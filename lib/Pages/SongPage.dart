import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/components/SongTile.dart';
import 'package:music_app/components/TrendingSongSlider.dart';
import 'package:music_app/components/songHeader.dart';
import 'package:music_app/controller/SongDataController.dart';

class Songpage extends StatelessWidget {
  const Songpage({super.key});

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SongPageHeader(),
                const SizedBox(height: 20),
                const Trendingsongslider(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {

                          songDataController.getLocalSongs();
                        },
                        child: Text("Cloud song",style: Theme.of(context).textTheme.bodySmall)),
                    Text("Device Song",style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(height: 20),
                    const SongTile(),
                    const SongTile(),
                    const SongTile(),
                    const SongTile(),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
