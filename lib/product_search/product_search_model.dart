import '/components/featured_products_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_search_widget.dart' show ProductSearchWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductSearchModel extends FlutterFlowModel<ProductSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel1;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel2;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel3;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel4;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel5;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel6;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel7;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel8;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel9;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel10;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel11;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel12;
  // State field(s) for DropDown widget.
  String? dropDownValue7;
  FormFieldController<String>? dropDownValueController7;
  // State field(s) for DropDown widget.
  String? dropDownValue8;
  FormFieldController<String>? dropDownValueController8;
  // State field(s) for DropDown widget.
  String? dropDownValue9;
  FormFieldController<String>? dropDownValueController9;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel13;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel14;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel15;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel16;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel17;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel18;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    featuredProductsModel1 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel2 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel3 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel4 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel5 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel6 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel7 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel8 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel9 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel10 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel11 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel12 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel13 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel14 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel15 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel16 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel17 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel18 =
        createModel(context, () => FeaturedProductsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    featuredProductsModel1.dispose();
    featuredProductsModel2.dispose();
    featuredProductsModel3.dispose();
    featuredProductsModel4.dispose();
    featuredProductsModel5.dispose();
    featuredProductsModel6.dispose();
    featuredProductsModel7.dispose();
    featuredProductsModel8.dispose();
    featuredProductsModel9.dispose();
    featuredProductsModel10.dispose();
    featuredProductsModel11.dispose();
    featuredProductsModel12.dispose();
    featuredProductsModel13.dispose();
    featuredProductsModel14.dispose();
    featuredProductsModel15.dispose();
    featuredProductsModel16.dispose();
    featuredProductsModel17.dispose();
    featuredProductsModel18.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
