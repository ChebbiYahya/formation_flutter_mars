import 'dart:ui';

import 'package:clone_spotify_mars/models/music_model.dart';
import 'package:flutter/material.dart';

class NouveauteVerticalWidget extends StatelessWidget {
  const NouveauteVerticalWidget({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 300,
      child: Column(
        children: [
          Expanded(child: Image.asset(musicModel.photo, fit: BoxFit.cover)),
          SizedBox(height: 10),
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
