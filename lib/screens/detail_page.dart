import 'package:clone_spotify_mars/models/music_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.musicModel});
  final MusicModel musicModel;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: Text(
            widget.musicModel.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: widget.musicModel.id,
                child: Image.asset(
                  widget.musicModel.photo,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Text(
                widget.musicModel.artist,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                widget.musicModel.artist,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.heart),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.download_circle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.ellipsis_vertical),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.add_circled, color: Colors.green),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.play_rectangle,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              ReadMoreText(
                widget.musicModel.description,
                trimMode: TrimMode.Line,
                trimLines: 4,
                style: TextStyle(color: Colors.white),
                colorClickableText: Colors.pink,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
