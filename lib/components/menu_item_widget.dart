import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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

class _MenuItemWidgetState extends State<MenuItemWidget>
    with TickerProviderStateMixin {
  late MenuItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              widget.imgpath!,
              width: widget.imgwidth,
              height: widget.imgheight,
              fit: BoxFit.cover,
            ),
          ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
          Text(
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
        ].divide(const SizedBox(height: 10.0)),
      ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
    );
  }
}
