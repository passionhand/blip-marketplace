import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'custom_navbar_model.dart';
export 'custom_navbar_model.dart';

class CustomNavbarWidget extends StatefulWidget {
  const CustomNavbarWidget({super.key});

  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget>
    with TickerProviderStateMixin {
  late CustomNavbarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
      'iconOnPageLoadAnimation1': AnimationInfo(
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
      'iconOnPageLoadAnimation2': AnimationInfo(
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
      'iconOnPageLoadAnimation3': AnimationInfo(
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
      width: 393.0,
      height: 86.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(48.0, 10.0, 48.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('CUSTOM_NAVBAR_COMP_Icon_h5v6b3ae_ON_TAP');
                logFirebaseEvent('Icon_navigate_to');

                context.pushNamed('HomePageExp');
              },
              child: Icon(
                Icons.home_outlined,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 35.0,
              ),
            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation1']!),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('CUSTOM_NAVBAR_COMP_Badge_kntr2lgb_ON_TAP');
                logFirebaseEvent('Badge_navigate_to');

                context.pushNamed('OrderScreen');
              },
              child: badges.Badge(
                badgeContent: Text(
                  '5',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Segoe UI',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                showBadge: true,
                shape: badges.BadgeShape.circle,
                badgeColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                position: badges.BadgePosition.topEnd(),
                animationType: badges.BadgeAnimationType.scale,
                toAnimate: true,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 35.0,
                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation2']!),
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('CUSTOM_NAVBAR_COMP_Icon_o8hp1sfj_ON_TAP');
                logFirebaseEvent('Icon_navigate_to');

                context.pushNamed('RestSearch');
              },
              child: Icon(
                Icons.search_rounded,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 35.0,
              ),
            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation3']!),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
