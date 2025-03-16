import 'package:clone_spotify_mars/models/music_model.dart';
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
        ],
      ),
    );
  }
}
