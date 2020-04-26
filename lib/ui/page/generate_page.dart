import 'package:client/domain/generate_page_bloc.dart';
import 'package:flutter/material.dart';

class GeneratePage extends StatefulWidget {
  @override
  _GeneratePageState createState() => _GeneratePageState();
}

class _GeneratePageState extends State<GeneratePage> {
  final _bloc = GeneratePageBloc.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buttons(),
          Spacer(),
          _predictedType(),
          _image(),
          Spacer(),
        ],
      ),
    );
  }

  Widget _image() {
    return StreamBuilder<String>(
      initialData: null,
      stream: _bloc.state.map((it) => it.imageUrl),
      builder: (context, snapshot) {
        final imageUrl = snapshot.data;
        return imageUrl == null || imageUrl.isEmpty
            ? Container()
            : Image.network(imageUrl);
      },
    );
  }

  Widget _buttons() {
    return Column(
      children: [
        RaisedButton(
          child: Text("Треугольник"),
          onPressed: () => _bloc.generateFigure(1),
        ),
        RaisedButton(
          child: Text("Квадрат"),
          onPressed: () => _bloc.generateFigure(2),
        ),
        RaisedButton(
          child: Text("Шестиугольник"),
          onPressed: () => _bloc.generateFigure(3),
        ),
      ],
    );
  }

  Widget _predictedType() {
    return StreamBuilder<String>(
      initialData: null,
      stream: _bloc.state.map((it) => it.predictedType),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();

        return Text(snapshot.data);
      },
    );
  }
}
