import '/flutter_flow/flutter_flow_util.dart';
import 'read_me_page_widget.dart' show ReadMePageWidget;
import 'package:flutter/material.dart';

class ReadMePageModel extends FlutterFlowModel<ReadMePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
