import '/flutter_flow/flutter_flow_util.dart';
import 'custom_tabbar_widget.dart' show CustomTabbarWidget;
import 'package:flutter/material.dart';

class CustomTabbarModel extends FlutterFlowModel<CustomTabbarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
