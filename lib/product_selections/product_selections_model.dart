import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_selections_widget.dart' show ProductSelectionsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductSelectionsModel extends FlutterFlowModel<ProductSelectionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for search component.
  late SearchModel searchModel;
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
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel1;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel2;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel3;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel4;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel5;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel6;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel7;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel8;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel9;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel10;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel11;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel12;
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    searchModel = createModel(context, () => SearchModel());
    featuredProductModel1 = createModel(context, () => FeaturedProductModel());
    featuredProductModel2 = createModel(context, () => FeaturedProductModel());
    featuredProductModel3 = createModel(context, () => FeaturedProductModel());
    featuredProductModel4 = createModel(context, () => FeaturedProductModel());
    featuredProductModel5 = createModel(context, () => FeaturedProductModel());
    featuredProductModel6 = createModel(context, () => FeaturedProductModel());
    featuredProductModel7 = createModel(context, () => FeaturedProductModel());
    featuredProductModel8 = createModel(context, () => FeaturedProductModel());
    featuredProductModel9 = createModel(context, () => FeaturedProductModel());
    featuredProductModel10 = createModel(context, () => FeaturedProductModel());
    featuredProductModel11 = createModel(context, () => FeaturedProductModel());
    featuredProductModel12 = createModel(context, () => FeaturedProductModel());
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchModel.dispose();
    tabBarController?.dispose();
    featuredProductModel1.dispose();
    featuredProductModel2.dispose();
    featuredProductModel3.dispose();
    featuredProductModel4.dispose();
    featuredProductModel5.dispose();
    featuredProductModel6.dispose();
    featuredProductModel7.dispose();
    featuredProductModel8.dispose();
    featuredProductModel9.dispose();
    featuredProductModel10.dispose();
    featuredProductModel11.dispose();
    featuredProductModel12.dispose();
    customNavbarModel.dispose();
  }
}
