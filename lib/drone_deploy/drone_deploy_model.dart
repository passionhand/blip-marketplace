import '/components/custom_navbar_widget.dart';
import '/components/featured_products_widget.dart';
import '/components/service_item2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'drone_deploy_widget.dart' show DroneDeployWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DroneDeployModel extends FlutterFlowModel<DroneDeployWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ServiceItem2 component.
  late ServiceItem2Model serviceItem2Model1;
  // Model for ServiceItem2 component.
  late ServiceItem2Model serviceItem2Model2;
  // Model for ServiceItem2 component.
  late ServiceItem2Model serviceItem2Model3;
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
    serviceItem2Model1 = createModel(context, () => ServiceItem2Model());
    serviceItem2Model2 = createModel(context, () => ServiceItem2Model());
    serviceItem2Model3 = createModel(context, () => ServiceItem2Model());
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
    serviceItem2Model1.dispose();
    serviceItem2Model2.dispose();
    serviceItem2Model3.dispose();
    featuredProductsModel1.dispose();
    featuredProductsModel2.dispose();
    featuredProductsModel3.dispose();
    customNavbarModel.dispose();
  }
}
