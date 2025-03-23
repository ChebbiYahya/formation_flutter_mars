import 'package:clone_spotify_mars/models/music_model.dart';
import 'package:clone_spotify_mars/screens/components/nouveaute_vertical_widget.dart';
import 'package:flutter/material.dart';

import '../components/nouveaute_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text("List Horizontal"),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: musicList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,

              itemBuilder:
                  ((context, index) =>
                      NouveauteWidget(musicModel: musicList[index])),
            ),
          ),
          Text("List Vertical"),
          Expanded(
            child: ListView.builder(
              itemCount: musicList.length,
              scrollDirection: Axis.vertical,
              itemBuilder:
                  ((context, index) =>
                      NouveauteVerticalWidget(musicModel: musicList[index])),
            ),
          ),
        ],
      ),
    );
  }
}
