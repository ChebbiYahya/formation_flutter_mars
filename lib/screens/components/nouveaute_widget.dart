import 'package:clone_spotify_mars/models/music_model.dart';
import 'package:flutter/material.dart';

class NouveauteWidget extends StatelessWidget {
  const NouveauteWidget({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 150,
      //color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(musicModel.photo, fit: BoxFit.cover)),
          SizedBox(height: 5),
          Text(
            musicModel.artist,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            musicModel.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
