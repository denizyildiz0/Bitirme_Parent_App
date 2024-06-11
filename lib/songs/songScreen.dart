import 'package:bitirme_parent_app/fonts/app_text_style.dart';
import 'package:bitirme_parent_app/songs/playlist_provider.dart';
import 'package:bitirme_parent_app/songs/song.dart';
import 'package:bitirme_parent_app/songs/song_play_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  //get the playlist provider
  late final dynamic playListProvider;

  @override
  void initState() {
    super.initState();

    //get playlist provider
    playListProvider = Provider.of<PlayListProvider>(context, listen: false);
  }

  //go to a song
  void goToSong(int songIndex) {
    //update current song index
    playListProvider.currentSongIndex = songIndex;

    //navigate to song page
    Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => SongPlayScreen()),
       );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          " NEŞELİ ÇOCUK ŞARKILARI",
          style: AppTextStyle.MINI_DESCRIPTION_TEXT,
        ),
        backgroundColor: Color.fromARGB(255, 255, 140, 238),
      ),
      body: Consumer<PlayListProvider>(
        builder: (context, value, child) {
          //get the playlist
          final List<Song> playlist = value.playlist;

          //return list view UI
          return ListView.builder(
            itemCount: playlist.length,
            itemBuilder: (context, index) {
              //get indiviual  song
              final Song song = playlist[index];

              //return list tile UI
              return ListTile(
                title: Text(song.songName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
                subtitle: Text(song.artistName,
                  style: TextStyle(
                  color: Colors.black38)),
                leading: ClipRRect(
                   borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(song.albumImage,
                  ),
                ),
                onTap: () => goToSong(index),
              );
            },
          );
        },
      ),
    );
  }
}
