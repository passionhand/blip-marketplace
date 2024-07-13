import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_selection_widget.dart' show ProductSelectionWidget;
import 'package:flutter/material.dart';

class ProductSelectionModel extends FlutterFlowModel<ProductSelectionWidget> {
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
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;
  // Model for search component.
  late SearchModel searchModel;

  @override
  void initState(BuildContext context) {
    featuredProductModel1 = createModel(context, () => FeaturedProductModel());
    featuredProductModel2 = createModel(context, () => FeaturedProductModel());
    featuredProductModel3 = createModel(context, () => FeaturedProductModel());
    featuredProductModel4 = createModel(context, () => FeaturedProductModel());
    featuredProductModel5 = createModel(context, () => FeaturedProductModel());
    featuredProductModel6 = createModel(context, () => FeaturedProductModel());
    customNavbarModel = createModel(context, () => CustomNavbarModel());
    searchModel = createModel(context, () => SearchModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    featuredProductModel1.dispose();
    featuredProductModel2.dispose();
    featuredProductModel3.dispose();
    featuredProductModel4.dispose();
    featuredProductModel5.dispose();
    featuredProductModel6.dispose();
    customNavbarModel.dispose();
    searchModel.dispose();
  }
}
