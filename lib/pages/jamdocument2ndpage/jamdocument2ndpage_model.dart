import '/components/song_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'jamdocument2ndpage_widget.dart' show Jamdocument2ndpageWidget;
import 'package:flutter/material.dart';

class Jamdocument2ndpageModel
    extends FlutterFlowModel<Jamdocument2ndpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SongCard component.
  late SongCardModel songCardModel;

  @override
  void initState(BuildContext context) {
    songCardModel = createModel(context, () => SongCardModel());
  }

  @override
  void dispose() {
    songCardModel.dispose();
  }
}
