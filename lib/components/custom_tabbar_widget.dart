import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'custom_tabbar_model.dart';
export 'custom_tabbar_model.dart';

class CustomTabbarWidget extends StatefulWidget {
  const CustomTabbarWidget({super.key});

  @override
  State<CustomTabbarWidget> createState() => _CustomTabbarWidgetState();
}

class _CustomTabbarWidgetState extends State<CustomTabbarWidget>
    with TickerProviderStateMixin {
  late CustomTabbarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomTabbarModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    animationsMap.addAll({
      'tabBarOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
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
    return Column(
      children: [
        Align(
          alignment: const Alignment(0.0, 0),
          child: FlutterFlowButtonTabBar(
            useToggleButtonStyle: false,
            labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Segoe UI',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
            unselectedLabelStyle: const TextStyle(),
            labelColor: Colors.white,
            unselectedLabelColor: FlutterFlowTheme.of(context).primary,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            unselectedBackgroundColor: FlutterFlowTheme.of(context).alternate,
            borderColor: FlutterFlowTheme.of(context).primary,
            unselectedBorderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 0.0,
            borderRadius: 25.0,
            elevation: 100.0,
            tabs: const [
              Tab(
                text: 'Medical',
              ),
              Tab(
                text: 'Food',
              ),
              Tab(
                text: 'Personal Care',
              ),
              Tab(
                text: 'Office',
              ),
            ],
            controller: _model.tabBarController,
            onTap: (i) async {
              [() async {}, () async {}, () async {}, () async {}][i]();
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _model.tabBarController,
            children: [
              Text(
                'Tab View 1',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'Tab View 2',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'Tab View 3',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Text(
                'Tab View 4',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
      ],
    ).animateOnPageLoad(animationsMap['tabBarOnPageLoadAnimation']!);
  }
}
