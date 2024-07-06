import '/components/change_address_widget.dart';
import '/components/ordered_product_widget.dart';
import '/components/schedule_dialog_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'order_screen_widget.dart' show OrderScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderScreenModel extends FlutterFlowModel<OrderScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for OrderedProduct component.
  late OrderedProductModel orderedProductModel1;
  // Model for OrderedProduct component.
  late OrderedProductModel orderedProductModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    orderedProductModel1 = createModel(context, () => OrderedProductModel());
    orderedProductModel2 = createModel(context, () => OrderedProductModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    orderedProductModel1.dispose();
    orderedProductModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
