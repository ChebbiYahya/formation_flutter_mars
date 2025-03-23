import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("List Horizontal", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder:
                      ((context, index) => Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        color: Colors.lightBlue,
                        child: Text(index.toString()),
                      )),
                ),
              ),
              SizedBox(height: 10),
              Text("List Vertical", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder:
                    ((context, index) => Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      color: Colors.blueAccent,
                      child: Text(index.toString()),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
