import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'phonenumberverification_model.dart';
export 'phonenumberverification_model.dart';

class PhonenumberverificationWidget extends StatefulWidget {
  const PhonenumberverificationWidget({super.key});

  @override
  State<PhonenumberverificationWidget> createState() =>
      _PhonenumberverificationWidgetState();
}

class _PhonenumberverificationWidgetState
    extends State<PhonenumberverificationWidget> {
  late PhonenumberverificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhonenumberverificationModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'phonenumberverification'});
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
              logFirebaseEvent('PHONENUMBERVERIFICATION_chevron_left_ICN');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Verify Phone Number',
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 796.0,
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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 34.0),
                        child: Container(
                          width: 106.0,
                          height: 106.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFEFEEED),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.phone_android_sharp,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 57.0,
                          ),
                        ),
                      ),
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Enter the virfication code that we sent to\n',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            const TextSpan(
                              text: '(222)555-66666',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Not your phone number? ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              const TextSpan(
                                text: 'Change',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  decoration: TextDecoration.underline,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            7.0, 37.0, 7.0, 20.0),
                        child: PinCodeTextField(
                          autoDisposeControllers: false,
                          appContext: context,
                          length: 6,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          enableActiveFill: false,
                          autoFocus: true,
                          enablePinAutofill: false,
                          errorTextSpace: 18.0,
                          showCursor: true,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          obscureText: false,
                          hintCharacter: '-',
                          keyboardType: TextInputType.number,
                          pinTheme: PinTheme(
                            fieldHeight: 48.0,
                            fieldWidth: 48.0,
                            borderWidth: 1.0,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                            ),
                            shape: PinCodeFieldShape.box,
                            activeColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            selectedColor: FlutterFlowTheme.of(context).primary,
                            activeFillColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveFillColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            selectedFillColor:
                                FlutterFlowTheme.of(context).primary,
                          ),
                          controller: _model.pinCodeController,
                          onChanged: (_) {},
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: _model.pinCodeControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'VERIFY',
                        options: FFButtonOptions(
                          width: 353.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 34.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Didn\'t receive the code? ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              const TextSpan(
                                text: 'Resend',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  decoration: TextDecoration.underline,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
