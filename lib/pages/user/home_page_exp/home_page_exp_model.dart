import '/auth/firebase_auth/auth_util.dart';
import '/components/featured_products_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_exp_widget.dart' show HomePageExpWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageExpModel extends FlutterFlowModel<HomePageExpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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

  @override
  void initState(BuildContext context) {
    serviceItemModel1 = createModel(context, () => ServiceItemModel());
    serviceItemModel2 = createModel(context, () => ServiceItemModel());
    serviceItemModel3 = createModel(context, () => ServiceItemModel());
    serviceItemModel4 = createModel(context, () => ServiceItemModel());
    serviceItemModel5 = createModel(context, () => ServiceItemModel());
    serviceItemModel6 = createModel(context, () => ServiceItemModel());
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
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    serviceItemModel1.dispose();
    serviceItemModel2.dispose();
    serviceItemModel3.dispose();
    serviceItemModel4.dispose();
    serviceItemModel5.dispose();
    serviceItemModel6.dispose();
    featuredProductsModel1.dispose();
    featuredProductsModel2.dispose();
    featuredProductsModel3.dispose();
    featuredProductsModel4.dispose();
    featuredProductsModel5.dispose();
    featuredProductsModel6.dispose();
  }
}
