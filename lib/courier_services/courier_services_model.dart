import '/components/package_item_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'courier_services_widget.dart' show CourierServicesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CourierServicesModel extends FlutterFlowModel<CourierServicesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for packageItem component.
  late PackageItemModel packageItemModel1;
  // Model for packageItem component.
  late PackageItemModel packageItemModel2;
  // Model for packageItem component.
  late PackageItemModel packageItemModel3;
  // Model for packageItem component.
  late PackageItemModel packageItemModel4;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    packageItemModel1 = createModel(context, () => PackageItemModel());
    packageItemModel2 = createModel(context, () => PackageItemModel());
    packageItemModel3 = createModel(context, () => PackageItemModel());
    packageItemModel4 = createModel(context, () => PackageItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    packageItemModel1.dispose();
    packageItemModel2.dispose();
    packageItemModel3.dispose();
    packageItemModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
