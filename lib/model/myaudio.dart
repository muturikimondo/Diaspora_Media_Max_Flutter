import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

class MyAudio extends ChangeNotifier{
  AudioProvider() {

    MyAudio() {
      initAudio();
    }
  }

  AudioPlayer audioPlayer = AudioPlayer();
  Duration totalDuration = new Duration(seconds:0 );
  Duration position = new Duration(seconds: 0);
  String audioState = "Loading";

  initAudio(){
    audioPlayer.onDurationChanged.listen((updatedDuration) {
      totalDuration = updatedDuration;
      notifyListeners();
    });
    audioPlayer.onPlayerStateChanged.listen((playerState) {

      var AudioPlayerState;
      if(playerState == AudioPlayerState.STOPPED) audioState = "Stopped";

      if(playerState==AudioPlayerState.PLAYING)  audioState = "Playing";
      if(playerState == AudioPlayerState.PAUSED)  audioState = "Paused";
      notifyListeners();
    });


    audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
      position = updatedPosition;
      notifyListeners();
    });


  }

  playAudio(){
    audioPlayer.play('https://s4.radio.co/sb70496db1/listen');
  }


  pauseAudio(){
    audioPlayer.pause();
  }

  stopAudio(){
    audioPlayer.stop();
  }

  seekAudio(Duration durationToSeek){
    audioPlayer.seek(durationToSeek);
  }



}


