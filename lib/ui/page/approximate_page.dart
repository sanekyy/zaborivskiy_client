import 'package:client/data/model/state/approximate_page_state.dart';
import 'package:client/domain/approximate_page_bloc.dart';
import 'package:flutter/material.dart';

class ApproximatePage extends StatefulWidget {
  @override
  _ApproximatePageState createState() => _ApproximatePageState();
}

class _ApproximatePageState extends State<ApproximatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ApproximatePageState>(
          stream: ApproximatePageBloc.instance.state,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Container();
            if (snapshot.data.imageUrl == null) return Container();

            final state = snapshot.data;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text("Square: ${state.square}"),
                Text("Perimeter: ${state.perimeter}"),
                Image.network(state.imageUrl),
                Spacer(),
              ],
            );
          }),
    );
  }
}
