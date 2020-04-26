import 'package:client/ui/page/approximate_page.dart';
import 'package:client/ui/page/generate_page.dart';
import 'package:client/ui/page/tessellate_page.dart';
import 'package:client/ui/widget/paint_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Заборовский"),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: Row(
          children: [
            Expanded(child: GeneratePage()),
            Expanded(child: ApproximatePage()),
            Expanded(child: PaintPage()),
            Expanded(child: TessellatePage()),
          ],
        ));
  }
}
