import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet_model.dart';
export 'bottom_sheet_model.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  late BottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetModel());
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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/notif_1.png',
                width: 178.0,
                height: 162.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
              child: Text(
                'Never Miss a Deal or Delivery!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 34.0),
              child: Text(
                'Get instant updates on your orders and exclusive \nlocal deals by turning on notifications. You can \ncustomize your preferences anytime!',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: false,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Enable Notifications',
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 24.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Segoe UI',
                        color: Colors.white,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 23.0, 0.0, 0.0),
              child: Text(
                'Not Now',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
