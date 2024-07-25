import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/featured_products_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_exp_copy_widget.dart' show HomePageExpCopyWidget;
import 'package:flutter/material.dart';

class HomePageExpCopyModel extends FlutterFlowModel<HomePageExpCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel1;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel2;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel3;
  // Model for FeaturedProduct component.
  late FeaturedProductModel featuredProductModel;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel1;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel2;
  // Model for FeaturedProducts component.
  late FeaturedProductsModel featuredProductsModel3;
  // Model for customNavbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    serviceItemModel1 = createModel(context, () => ServiceItemModel());
    serviceItemModel2 = createModel(context, () => ServiceItemModel());
    serviceItemModel3 = createModel(context, () => ServiceItemModel());
    featuredProductModel = createModel(context, () => FeaturedProductModel());
    featuredProductsModel1 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel2 =
        createModel(context, () => FeaturedProductsModel());
    featuredProductsModel3 =
        createModel(context, () => FeaturedProductsModel());
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    serviceItemModel1.dispose();
    serviceItemModel2.dispose();
    serviceItemModel3.dispose();
    featuredProductModel.dispose();
    featuredProductsModel1.dispose();
    featuredProductsModel2.dispose();
    featuredProductsModel3.dispose();
    customNavbarModel.dispose();
  }
}
