import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notificatios_settings_model.dart';
export 'notificatios_settings_model.dart';

class NotificatiosSettingsWidget extends StatefulWidget {
  const NotificatiosSettingsWidget({super.key});

  @override
  State<NotificatiosSettingsWidget> createState() =>
      _NotificatiosSettingsWidgetState();
}

class _NotificatiosSettingsWidgetState
    extends State<NotificatiosSettingsWidget> {
  late NotificatiosSettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificatiosSettingsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'NotificatiosSettings'});
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('NOTIFICATIOS_SETTINGS_chevron_left_ICN_O');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Notifications',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Segoe UI',
                  color: Colors.white,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/888/600',
                          width: 32.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: SwitchListTile.adaptive(
                            value: _model.switchListTileValue1 ??= true,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue1 = newValue);
                            },
                            title: Text(
                              'Promotions',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeColor: FlutterFlowTheme.of(context).primary,
                            activeTrackColor: const Color(0xFF34C759),
                            dense: true,
                            controlAffinity: ListTileControlAffinity.trailing,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/888/600',
                          width: 32.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: SwitchListTile.adaptive(
                          value: _model.switchListTileValue2 ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue2 = newValue);
                          },
                          title: Text(
                            'Order Updates',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor: const Color(0xFF34C759),
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/888/600',
                          width: 32.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: SwitchListTile.adaptive(
                          value: _model.switchListTileValue3 ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue3 = newValue);
                          },
                          title: Text(
                            'Delivery Notifications',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor: const Color(0xFF34C759),
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/888/600',
                          width: 32.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: SwitchListTile.adaptive(
                          value: _model.switchListTileValue4 ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue4 = newValue);
                          },
                          title: Text(
                            'Account Alerts',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor: const Color(0xFF34C759),
                          dense: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
