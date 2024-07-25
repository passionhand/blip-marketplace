import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'signup_model.dart';
export 'signup_model.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget>
    with TickerProviderStateMixin {
  late SignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'signup'});
    _model.nameTextController ??= TextEditingController();
    _model.nameFocusNode ??= FocusNode();

    _model.emailTextController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

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
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 5.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 5.0,
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 5.0,
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              alignment: const AlignmentDirectional(0.0, -1.0),
              image: Image.asset(
                'assets/images/back1.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/dark_logo.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/drone1.png',
                          width: 300.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xE6FFFFFF),
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Register',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 14.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.nameTextController,
                                  focusNode: _model.nameFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.nameTextController',
                                    const Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Segoe UI',
                                          color: const Color(0xFF95A1AC),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Segoe UI',
                                          color: const Color(0xFF95A1AC),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE3E3E3),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 8.0, 0.0, 8.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  validator: _model.nameTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 13.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.emailTextController,
                                  focusNode: _model.emailFocusNode,
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Segoe UI',
                                          color: const Color(0xFF95A1AC),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Segoe UI',
                                          color: const Color(0xFF95A1AC),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE3E3E3),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 8.0, 0.0, 8.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  validator: _model.emailTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 13.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.passwordTextController,
                                  focusNode: _model.passwordFocusNode,
                                  autofocus: true,
                                  obscureText: !_model.passwordVisibility,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Segoe UI',
                                          color: const Color(0xFF95A1AC),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Segoe UI',
                                          color: const Color(0xFF95A1AC),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE3E3E3),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 8.0, 0.0, 8.0),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => _model.passwordVisibility =
                                            !_model.passwordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  validator: _model
                                      .passwordTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: SizedBox(
                                  width: 353.0,
                                  height: 50.0,
                                  child: custom_widgets.PasswordState(
                                    width: 353.0,
                                    height: 50.0,
                                    password:
                                        _model.passwordTextController.text,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent('SIGNUP_PAGE_REGISTER_BTN_ON_TAP');
                            logFirebaseEvent('Button_auth');
                            GoRouter.of(context).prepareAuthEvent();

                            final user =
                                await authManager.createAccountWithEmail(
                              context,
                              _model.emailTextController.text,
                              _model.passwordTextController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            logFirebaseEvent('Button_custom_action');
                            _model.token = await actions.getFirebaseToken();
                            logFirebaseEvent('Button_backend_call');
                            _model.signupResult = await OpenAPIDefinitionGroup
                                .customersAuthenticateCall
                                .call(
                              xApiKey: FFAppState().xapikey,
                              name: _model.nameTextController.text,
                              token: _model.token,
                              rememberMe: true,
                            );

                            if ((_model.signupResult?.succeeded ?? true)) {
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamedAuth(
                                'TermsAndConditions',
                                context.mounted,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );
                            } else {
                              logFirebaseEvent('Button_show_snack_bar');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'signup failed.',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }

                            setState(() {});
                          },
                          text: 'Register',
                          options: FFButtonOptions(
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 15.0, 24.0, 15.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFF2DFBB),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Segoe UI',
                                  color: Colors.black,
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Text(
                          'Or Register With',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Segoe UI',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'SIGNUP_PAGE_Container_rv9hn4ia_ON_TAP');
                                logFirebaseEvent('Container_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                final user =
                                    await authManager.signInWithGoogle(context);
                                if (user == null) {
                                  return;
                                }
                                logFirebaseEvent('Container_custom_action');
                                _model.tokenGoogle =
                                    await actions.getFirebaseToken();
                                logFirebaseEvent('Container_backend_call');
                                _model.signupResultGoogle =
                                    await OpenAPIDefinitionGroup
                                        .customersAuthenticateCall
                                        .call(
                                  xApiKey: FFAppState().xapikey,
                                  name: _model.nameTextController.text,
                                  token: _model.tokenGoogle,
                                  rememberMe: true,
                                );

                                if ((_model.signupResultGoogle?.succeeded ??
                                    true)) {
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamedAuth(
                                    'TermsAndConditions',
                                    context.mounted,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 100),
                                      ),
                                    },
                                  );
                                } else {
                                  logFirebaseEvent('Container_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'signup failed.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/google_logo.png',
                                      width: 35.0,
                                      height: 35.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation1']!),
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'SIGNUP_PAGE_Container_3qhw0kjb_ON_TAP');
                                logFirebaseEvent('Container_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                final user =
                                    await authManager.signInWithApple(context);
                                if (user == null) {
                                  return;
                                }
                                logFirebaseEvent('Container_custom_action');
                                _model.tokenApple =
                                    await actions.getFirebaseToken();
                                logFirebaseEvent('Container_backend_call');
                                _model.signupResultApple =
                                    await OpenAPIDefinitionGroup
                                        .customersAuthenticateCall
                                        .call(
                                  xApiKey: FFAppState().xapikey,
                                  name: _model.nameTextController.text,
                                  token: _model.tokenApple,
                                  rememberMe: true,
                                );

                                if ((_model.signupResultApple?.succeeded ??
                                    true)) {
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamedAuth(
                                    'TermsAndConditions',
                                    context.mounted,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 100),
                                      ),
                                    },
                                  );
                                } else {
                                  logFirebaseEvent('Container_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'signup failed.',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: const Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/apple_logo.png',
                                      width: 29.0,
                                      height: 35.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation2']!),
                                ),
                              ),
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/facebook_logo.png',
                                    width: 35.0,
                                    height: 35.0,
                                    fit: BoxFit.cover,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'imageOnPageLoadAnimation3']!),
                              ),
                            ),
                          ].divide(const SizedBox(width: 45.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'SIGNUP_PAGE_RichText_c0p1gmfu_ON_TAP');
                            logFirebaseEvent('RichText_navigate_to');

                            context.pushNamed('login');
                          },
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Already a Member?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        color: const Color(0xFFFFFCFC),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                TextSpan(
                                  text: ' Login',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
