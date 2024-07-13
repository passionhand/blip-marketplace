import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    super.key,
    required this.imgwidth,
    required this.imgheight,
    required this.imgpath,
    required this.itemName,
    required this.componentWidth,
    required this.componentHeight,
  });

  final double? imgwidth;
  final double? imgheight;
  final String? imgpath;
  final String? itemName;
  final double? componentWidth;
  final double? componentHeight;

  @override
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  late MenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.componentWidth,
      height: widget.componentHeight,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              widget.imgpath!,
              width: widget.imgwidth,
              height: widget.imgheight,
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Text(
              valueOrDefault<String>(
                widget.itemName,
                'ItemName',
              ),
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Segoe UI',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ].divide(const SizedBox(height: 10.0)),
      ),
    );
  }
}
