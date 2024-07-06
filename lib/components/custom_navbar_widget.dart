import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custom_navbar_model.dart';
export 'custom_navbar_model.dart';

class CustomNavbarWidget extends StatefulWidget {
  const CustomNavbarWidget({super.key});

  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  late CustomNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarModel());

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
      width: 393.0,
      height: 86.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        borderRadius: BorderRadius.only(
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
        padding: EdgeInsetsDirectional.fromSTEB(48.0, 10.0, 48.0, 10.0),
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
            ),
            Container(
              width: 50.0,
              height: 59.0,
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'CUSTOM_NAVBAR_COMP_Icon_4a8lemui_ON_TAP');
                      logFirebaseEvent('Icon_navigate_to');

                      context.pushNamed('ProductSearch');
                    },
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 35.0,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: Container(
                      width: 22.0,
                      height: 22.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '5',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
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

                context.pushNamed('ServiceSearch');
              },
              child: Icon(
                Icons.search_rounded,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 35.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
