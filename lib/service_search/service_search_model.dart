import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'service_search_widget.dart' show ServiceSearchWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ServiceSearchModel extends FlutterFlowModel<ServiceSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel1;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel2;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel3;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel4;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel5;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel6;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel7;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel8;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel9;

  @override
  void initState(BuildContext context) {
    serviceItemModel1 = createModel(context, () => ServiceItemModel());
    serviceItemModel2 = createModel(context, () => ServiceItemModel());
    serviceItemModel3 = createModel(context, () => ServiceItemModel());
    serviceItemModel4 = createModel(context, () => ServiceItemModel());
    serviceItemModel5 = createModel(context, () => ServiceItemModel());
    serviceItemModel6 = createModel(context, () => ServiceItemModel());
    serviceItemModel7 = createModel(context, () => ServiceItemModel());
    serviceItemModel8 = createModel(context, () => ServiceItemModel());
    serviceItemModel9 = createModel(context, () => ServiceItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    serviceItemModel1.dispose();
    serviceItemModel2.dispose();
    serviceItemModel3.dispose();
    serviceItemModel4.dispose();
    serviceItemModel5.dispose();
    serviceItemModel6.dispose();
    serviceItemModel7.dispose();
    serviceItemModel8.dispose();
    serviceItemModel9.dispose();
  }
}
