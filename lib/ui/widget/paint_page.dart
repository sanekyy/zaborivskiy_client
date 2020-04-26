import 'dart:ui';

import 'package:client/domain/approximate_page_bloc.dart';
import 'package:client/domain/tessellate_page_bloc.dart';
import 'package:client/utils/log.dart';
import 'package:flutter/material.dart';

class PaintPage extends StatefulWidget {
  @override
  _PaintPageState createState() => _PaintPageState();
}

class _PaintPageState extends State<PaintPage> {
  List<Offset> points = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RaisedButton(
            child: Text("Tessellate"),
            onPressed: () => TessellatePageBloc.instance.run(points),
          ),
          Expanded(
            child: Builder(builder: (context) {
              return GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    RenderBox renderBox = context.findRenderObject();
                    points.add(renderBox.globalToLocal(details.globalPosition));
                  });
                },
                onPanStart: (details) {
                  setState(() {
                    points.clear();
                    RenderBox renderBox = context.findRenderObject();
                    points.add(renderBox.globalToLocal(details.globalPosition));
                  });
                },
                onPanEnd: (details) {
                  setState(() {
                    points.add(points.first);
                    Log.d("TAG", "points: ${points.length}");
                  });
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                    ),
                    Center(child: _figure()),
                    CustomPaint(
                      painter: MyPainter(
                        points: points,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _figure() {
    return StreamBuilder<String>(
        stream: ApproximatePageBloc.instance.state.map((it) => it.imageUrl),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Container();
          return Image.network(snapshot.data);
        });
  }
}

class MyPainter extends CustomPainter {
  final myPaint = Paint()..color = Colors.red;

  List<Offset> points;

  MyPainter({this.points});

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < points.length - 1; i++) {
      canvas.drawLine(points[i], points[i + 1], myPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
