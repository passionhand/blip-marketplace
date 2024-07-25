import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'splash3_model.dart';
export 'splash3_model.dart';

class Splash3Widget extends StatefulWidget {
  const Splash3Widget({super.key});

  @override
  State<Splash3Widget> createState() => _Splash3WidgetState();
}

class _Splash3WidgetState extends State<Splash3Widget>
    with TickerProviderStateMixin {
  late Splash3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Splash3Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Splash3'});
    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 550.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 6.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
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
      'textOnPageLoadAnimation3': AnimationInfo(
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
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 50.0, 24.0, 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/light_logo.svg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/Splash3.png',
                                  fit: BoxFit.contain,
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['imageOnPageLoadAnimation']!),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 49.0, 0.0, 0.0),
                              child: Text(
                                'Wide Range of Products!',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'From medical supplies to food beverages, and subscription boxes.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Text(
                                'Blip delivers it all.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation3']!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 28.0,
                        height: 2.0,
                        decoration: const BoxDecoration(
                          color: Color(0x4CFFFFFF),
                        ),
                      ),
                      Container(
                        width: 28.0,
                        height: 2.0,
                        decoration: const BoxDecoration(
                          color: Color(0x4CFFFFFF),
                        ),
                      ),
                      Container(
                        width: 28.0,
                        height: 2.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ].divide(const SizedBox(width: 15.0)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 36.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'SPLASH3_PAGE_Text_w6ecdupc_ON_TAP');
                              logFirebaseEvent('Text_navigate_to');

                              context.pushNamed(
                                'login',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );
                            },
                            child: Text(
                              'Get Started',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
            ],
          ),
        ),
      ),
    );
  }
}
