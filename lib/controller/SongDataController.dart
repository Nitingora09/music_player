
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongDataController extends GetxController
{

  final audioQuery = OnAudioQuery();

  RxList<SongModel> songList = <SongModel>[].obs;


  void getLocalSongs() async{

    songList.value = await audioQuery.querySongs(
      ignoreCase: true,
      orderType: OrderType.ASC_OR_SMALLER,
      sortType: null,
      uriType: UriType.EXTERNAL,
    );

    print(songList.value);
  }

}