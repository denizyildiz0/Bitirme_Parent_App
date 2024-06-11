import 'package:audioplayers/audioplayers.dart';
import 'package:bitirme_parent_app/songs/song.dart';
import 'package:flutter/material.dart';


class PlayListProvider extends ChangeNotifier {
  //playlist of songs
  final List<Song> _playlist = [
    //song 1
    Song(
      songName: "Ceviz Adam",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/ceviz.jpeg",
      audioPath: "audio/ceviz.mp3",
    ),
    //song 2
    Song(
      songName: "Kırmızı Balık",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/kirmizibalik.jpeg",
      audioPath: "audio/kirmizi.mp3",
    ),
    //song 3
    Song(
      songName: "Ali Babanın Bir Çiftliği Var",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/ali.jpeg",
      audioPath: "audio/ali.mp3",
    ),
    //song 4
    Song(
      songName: "Arı Vız Vız Vız",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/ari.jpeg",
      audioPath: "audio/ari.mp3",
    ),
    //song 5
    Song(
      songName: "Ay Dede Senin Evin Nerede",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/ay.jpeg",
      audioPath: "audio/aydede.mp3",
    ),
    //song 6
    Song(
      songName: "Mini Mini Bir Kuş",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/kus.jpeg",
      audioPath: "audio/minikus.mp3",
    ),
    //song 7
    Song(
      songName: "Anne Karnım Acıktı",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/anne.jpeg",
      audioPath: "audio/annekarnimacikti.mp3",
    ),
    //song 8
    Song(
      songName: "Ben Bir Elma Kurduyum",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/elma.jpeg",
      audioPath: "audio/elma.mp3",
    ),
    //song 9
    Song(
      songName: "Gezegenler",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/gezegen.jpeg",
      audioPath: "audio/gezegen.mp3",
    ),
    //song 10
    Song(
      songName: "Birgün Birgün Bir Çocuk",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/ilac.jpeg",
      audioPath: "audio/birilac.mp3",
    ),
    //song 11
    Song(
      songName: "Ellerim Tombik Tombik",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/eller.jpeg",
      audioPath: "audio/ellerim.mp3",
    ),
    //song 12
    Song(
      songName: "KÖpeğim Hav Hav Der",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/kopek.jpeg",
      audioPath: "audio/kopek.mp3",
    ),
    //song 13
    Song(
      songName: "Arkadaşım Eşşek",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/esek.jpeg",
      audioPath: "audio/essek.mp3",
    ),
    //song 14
    Song(
      songName: "Bakkal Amca",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/bakkal.jpeg",
      audioPath: "audio/bakkal.mp3",
    ),
    //song 15
    Song(
      songName: "Pazara Gidelim",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/pazar.jpeg",
      audioPath: "audio/pazar.mp3",
    ),
    //song 16
    Song(
      songName: "Virüs Hasta Eder Bizi",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/virus.jpeg",
      audioPath: "audio/virus.mp3",
    ),
    //song 17
    Song(
      songName: "Otobüsün Tekerleği",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/otobus.jpeg",
      audioPath: "audio/otobus.mp3",
    ),
    //song 18
    Song(
      songName: "Bak Postacı Geliyor",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/posta.jpeg",
      audioPath: "audio/posta.mp3",
    ),
    //song 19
    Song(
      songName: "Baltalar Elimizde",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/balta.jpeg",
      audioPath: "audio/balta.mp3",
    ),
    //song 20
    Song(
      songName: "Dişler",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/disler.jpeg",
      audioPath: "audio/disler.mp3",
    ),
    //song 21
    Song(
      songName: "Eğer Sende Mutluysan Alkışla",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/mutlu.jpeg",
      audioPath: "audio/sendemutluysan.mp3",
    ),
    //song 22
    Song(
      songName: "Horozumu Kaçırdılar",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/horoz.jpeg",
      audioPath: "audio/horoz.mp3",
    ),
    //song 23
    Song(
      songName: "İki Uzun Kulağım Var Benim",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/tavsan.jpeg",
      audioPath: "audio/uzunkulak.mp3",
    ),
    //song 24
    Song(
      songName: "Kardeş Şarkısı",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/kardes.jpeg",
      audioPath: "audio/kardes.mp3",
    ),
    //song 25
    Song(
      songName: "Kestane Gülgen Palamut",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/kestane.jpeg",
      audioPath: "audio/kestane.mp3",
    ),
    //song 26
    Song(
      songName: "Renkler",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/renkler.jpeg",
      audioPath: "audio/renkler.mp3",
    ),
    //song 27
    Song(
      songName: "Küçük Kurbağa",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/kurbaga.jpeg",
      audioPath: "audio/kurbaga.mp3",
    ),
    //song 28
    Song(
      songName: "Sağ Elimde Baş Parmak",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/sagel.jpeg",
      audioPath: "audio/parmak.mp3",
    ),
    //song 29
    Song(
      songName: "Tin Tini Mini Hanım",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/seftali.jpeg",
      audioPath: "audio/seftali.mp3",
    ),
    //song 30
    Song(
      songName: "Tohumlar Fidana",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/tohum.jpeg",
      audioPath: "audio/tohum.mp3",
    ),
    //song 31
    Song(
      songName: "Türkçe A-B-C",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/abc.jpeg",
      audioPath: "audio/abc.mp3",
    ),
    //song 32
    Song(
      songName: "Uğur Böceği",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/ugur.jpeg",
      audioPath: "audio/ugurbocegi.mp3",
    ),
    //song 33
    Song(
      songName: "Yağ Satarım",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/bal.jpeg",
      audioPath: "audio/yag.mp3",
    ),
    //song 34
    Song(
      songName: "Biz Tam Yedi Cüceyiz",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/cuce.jpeg",
      audioPath: "audio/cuce.mp3",
    ),
    //song 35
    Song(
      songName: "Zıp Zıp",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/zipzip.jpeg",
      audioPath: "audio/zipzip.mp3",
    ),
    //song 36
    Song(
      songName: "Sar Sar Sar Makarayı",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/sar.jpeg",
      audioPath: "audio/sar.mp3",
    ),
    //song 37
    Song(
      songName: "Ha Ha Hapşu",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/hapsu.jpeg",
      audioPath: "audio/hapsu.mp3",
    ),
    //song 38
    Song(
      songName: "Meslekler",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/meslek.jpeg",
      audioPath: "audio/meslek.mp3",
    ),
    //song 39
    Song(
      songName: "İki İnatçı Keçi",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/keci.jpeg",
      audioPath: "audio/keci.mp3",
    ),
    //song 40
    Song(
      songName: "Sen Hiç Gördünmü",
      artistName: "Neşeli Çocuk Şarkıları",
      albumImage: "assets/images/senhic.jpeg",
      audioPath: "audio/senhic.mp3",
    ),
  ];

  //current song playing index
  int? _currentSongIndex;

  /*
  
  A U D I O  P L A Y E R 

  */

  //audio player
  final AudioPlayer _audioPlayer = AudioPlayer();

  //durations
  Duration _currentDuration = Duration.zero;
  Duration _totalDuration = Duration.zero;

  //constructor
  PlayListProvider() {
    listenToDuration();
  }

  //initially not playing
  bool _isPlaying = false;

  //play the song
  void play() async {
    final String path = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop(); //stop current song
    await _audioPlayer.play(AssetSource(path)); //play the new song
    _isPlaying = true;
    notifyListeners();
  }

  //pause current song
  void pause() async {
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  //resume playing
  void resume() async {
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  //pause or resume
  void pauseOrResume() async {
    if (_isPlaying) {
      pause();
    } else {
      resume();
    }
    notifyListeners();
  }

  //seek to a spesific position in the current song
  void seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  //play next song
  void playNextSong() {
    if (_currentSongIndex != null) {
      if (_currentSongIndex! < _playlist.length - 1) {
        //go to the next song if it's not the last song
        currentSongIndex = _currentSongIndex! + 1;
      } else {
        //if it's the last song, loop back to the first song
        currentSongIndex = 0;
      }
    }
  }

  //play previus song
  void playPreviousSong() async {
    //if more the 2 seconds have passed, restart the current song
    if (_currentDuration.inSeconds > 2) {
      seek(Duration.zero);
    }
    //if it's within first 2 second of the song, go to previous song
    else {
      if (_currentSongIndex! > 0) {
        currentSongIndex = _currentSongIndex! - 1;
      } else {
        //if it's the first song, loop back to last song
        _currentSongIndex = _playlist.length - 1;
      }
    }
  }

  //listen to duration
  void listenToDuration() {
    //listen for total duration
    _audioPlayer.onDurationChanged.listen((newDuration) {
      _totalDuration = newDuration;
      notifyListeners();
    });

    //listen for current duration
    _audioPlayer.onPositionChanged.listen((newPosition) {
      _currentDuration = newPosition;
      notifyListeners();
    });

    //listen for song completion
    _audioPlayer.onPlayerComplete.listen((event) {
      playNextSong();
    });
  }

  //dispose audio player

  /*

  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying => _isPlaying;
  Duration get currentDuration => _currentDuration;
  Duration get totalDuration => _totalDuration;

  /*
  
  S E T T E R S
  
  */

  set currentSongIndex(int? newIndex) {
    //update current song index
    _currentSongIndex = newIndex;

    if (newIndex != null) {
      play(); //play the song at the new index
    }

    //update UI
    notifyListeners();
  }
}
