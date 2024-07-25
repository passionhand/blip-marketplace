import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget>
    with TickerProviderStateMixin {
  late SearchModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
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
      'textFieldOnPageLoadAnimation': AnimationInfo(
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
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 8.0, 5.0),
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelText: '     Search Service',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Segoe UI',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Segoe UI',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    suffixIcon: const Icon(
                      Icons.search_outlined,
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Segoe UI',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  maxLines: null,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ).animateOnPageLoad(
                    animationsMap['textFieldOnPageLoadAnimation']!),
              ),
            ),
            Container(
              width: 35.0,
              height: 33.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                child: Stack(
                  alignment: const AlignmentDirectional(1.0, -1.0),
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 1.0),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Container(
                      width: 21.0,
                      height: 21.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '3',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Segoe UI',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
      ),
    );
  }
}
