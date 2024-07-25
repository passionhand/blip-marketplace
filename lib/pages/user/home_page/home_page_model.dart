import '/backend/api_requests/api_calls.dart';
import '/components/address_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getCategories)] action in HomePage widget.
  ApiCallResponse? getCategoriesResult;
  // Model for Address component.
  late AddressModel addressModel;
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
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel10;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel11;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel12;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel13;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel14;
  // Model for ServiceItem component.
  late ServiceItemModel serviceItemModel15;

  @override
  void initState(BuildContext context) {
    addressModel = createModel(context, () => AddressModel());
    serviceItemModel1 = createModel(context, () => ServiceItemModel());
    serviceItemModel2 = createModel(context, () => ServiceItemModel());
    serviceItemModel3 = createModel(context, () => ServiceItemModel());
    serviceItemModel4 = createModel(context, () => ServiceItemModel());
    serviceItemModel5 = createModel(context, () => ServiceItemModel());
    serviceItemModel6 = createModel(context, () => ServiceItemModel());
    serviceItemModel7 = createModel(context, () => ServiceItemModel());
    serviceItemModel8 = createModel(context, () => ServiceItemModel());
    serviceItemModel9 = createModel(context, () => ServiceItemModel());
    serviceItemModel10 = createModel(context, () => ServiceItemModel());
    serviceItemModel11 = createModel(context, () => ServiceItemModel());
    serviceItemModel12 = createModel(context, () => ServiceItemModel());
    serviceItemModel13 = createModel(context, () => ServiceItemModel());
    serviceItemModel14 = createModel(context, () => ServiceItemModel());
    serviceItemModel15 = createModel(context, () => ServiceItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addressModel.dispose();
    serviceItemModel1.dispose();
    serviceItemModel2.dispose();
    serviceItemModel3.dispose();
    serviceItemModel4.dispose();
    serviceItemModel5.dispose();
    serviceItemModel6.dispose();
    serviceItemModel7.dispose();
    serviceItemModel8.dispose();
    serviceItemModel9.dispose();
    serviceItemModel10.dispose();
    serviceItemModel11.dispose();
    serviceItemModel12.dispose();
    serviceItemModel13.dispose();
    serviceItemModel14.dispose();
    serviceItemModel15.dispose();
  }
}
