import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  final String sound;
  final Color btnColor;

  const PlayButton({Key key, @required this.sound, @required this.btnColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        radius: 120,
        splashColor: Colors.black12,
        onTap: () {
          var player = AudioCache();
          player.play(sound);
        },
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(width: 0.0, color: Colors.transparent),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6.0,
                  spreadRadius: 4.0,
                  offset: Offset.fromDirection(60.0)),
            ],
            borderRadius: BorderRadius.only(topRight: Radius.circular(120.0)),
            color: btnColor,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
