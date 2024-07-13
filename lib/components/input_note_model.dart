import '/flutter_flow/flutter_flow_util.dart';
import 'input_note_widget.dart' show InputNoteWidget;
import 'package:flutter/material.dart';

class InputNoteModel extends FlutterFlowModel<InputNoteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
