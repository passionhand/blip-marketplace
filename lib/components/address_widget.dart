import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'address_model.dart';
export 'address_model.dart';

class AddressWidget extends StatefulWidget {
  const AddressWidget({super.key});

  @override
  State<AddressWidget> createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget>
    with TickerProviderStateMixin {
  late AddressModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressModel());

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
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
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.place_sharp,
          color: FlutterFlowTheme.of(context).primaryBackground,
          size: 12.0,
        ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
        Flexible(
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Text(
              '1901 Thornridge Cir. Shiloh',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Segoe UI',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
          ),
        ),
      ],
    );
  }
}
