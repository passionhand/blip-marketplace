import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'medical_supplies_widget.dart' show MedicalSuppliesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MedicalSuppliesModel extends FlutterFlowModel<MedicalSuppliesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuItem component.
  late MenuItemModel menuItemModel1;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel2;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel3;
  // Model for MenuItem component.
  late MenuItemModel menuItemModel4;
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

  @override
  void initState(BuildContext context) {
    menuItemModel1 = createModel(context, () => MenuItemModel());
    menuItemModel2 = createModel(context, () => MenuItemModel());
    menuItemModel3 = createModel(context, () => MenuItemModel());
    menuItemModel4 = createModel(context, () => MenuItemModel());
    featuredProductModel1 = createModel(context, () => FeaturedProductModel());
    featuredProductModel2 = createModel(context, () => FeaturedProductModel());
    featuredProductModel3 = createModel(context, () => FeaturedProductModel());
    featuredProductModel4 = createModel(context, () => FeaturedProductModel());
    featuredProductModel5 = createModel(context, () => FeaturedProductModel());
    featuredProductModel6 = createModel(context, () => FeaturedProductModel());
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuItemModel1.dispose();
    menuItemModel2.dispose();
    menuItemModel3.dispose();
    menuItemModel4.dispose();
    featuredProductModel1.dispose();
    featuredProductModel2.dispose();
    featuredProductModel3.dispose();
    featuredProductModel4.dispose();
    featuredProductModel5.dispose();
    featuredProductModel6.dispose();
    customNavbarModel.dispose();
  }
}
