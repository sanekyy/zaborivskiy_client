import 'package:client/data/model/state/tessellate_page_state.dart';
import 'package:client/domain/tessellate_page_bloc.dart';
import 'package:flutter/material.dart';

class TessellatePage extends StatefulWidget {
  @override
  _TessellatePageState createState() => _TessellatePageState();
}

class _TessellatePageState extends State<TessellatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<TessellatePageState>(
          stream: TessellatePageBloc.instance.state,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Container();
            if (snapshot.data.imageUrl == null) return Container();

            final state = snapshot.data;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text("Figures count: ${state.figuresCount}"),
                Text("Cover percent: ${state.coverPercent * 100}%"),
                Image.network(state.imageUrl, fit: BoxFit.contain,),
                Spacer(),
              ],
            );
          }),
    );
  }
}
