import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'search_item_model.dart';
export 'search_item_model.dart';

class SearchItemWidget extends StatefulWidget {
  const SearchItemWidget({super.key});

  @override
  State<SearchItemWidget> createState() => _SearchItemWidgetState();
}

class _SearchItemWidgetState extends State<SearchItemWidget>
    with TickerProviderStateMixin {
  late SearchItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchItemModel());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation': AnimationInfo(
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
      'textOnPageLoadAnimation': AnimationInfo(
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
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FlutterFlowIconButton(
            borderRadius: 100.0,
            borderWidth: 0.0,
            buttonSize: 76.0,
            fillColor: FlutterFlowTheme.of(context).accent1,
            icon: Icon(
              Icons.coffee_sharp,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 40.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ).animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation']!),
          Flexible(
            child: Text(
              'Clothing and Accessories',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Segoe UI',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
