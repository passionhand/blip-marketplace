import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'support_ticket_widget.dart' show SupportTicketWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SupportTicketModel extends FlutterFlowModel<SupportTicketWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode1;
  TextEditingController? subjectTextController1;
  String? Function(BuildContext, String?)? subjectTextController1Validator;
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode2;
  TextEditingController? subjectTextController2;
  String? Function(BuildContext, String?)? subjectTextController2Validator;
  // State field(s) for attachinput widget.
  FocusNode? attachinputFocusNode;
  TextEditingController? attachinputTextController;
  String? Function(BuildContext, String?)? attachinputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    subjectFocusNode1?.dispose();
    subjectTextController1?.dispose();

    subjectFocusNode2?.dispose();
    subjectTextController2?.dispose();

    attachinputFocusNode?.dispose();
    attachinputTextController?.dispose();
  }
}
