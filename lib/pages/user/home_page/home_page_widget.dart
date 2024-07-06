import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'HomePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            appBar: AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              title: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/light_logo.svg',
                  fit: BoxFit.contain,
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 24.0,
                  ).animateOnPageLoad(
                      animationsMap['iconOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/Frame_8.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome to Blip!',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Your one-stop solution for instant deliveries.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        color: Colors.white,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 25.0, 20.0, 35.0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1.0,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          wrapWithModel(
                            model: _model.serviceItemModel1,
                            updateCallback: () => setState(() {}),
                            child: ServiceItemWidget(
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/o47uhjdhpx83/service1.svg',
                              service: 'Medical\nSupplies',
                              backColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              showFav: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.serviceItemModel2,
                            updateCallback: () => setState(() {}),
                            child: ServiceItemWidget(
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/lyquxc1q1nwh/service2.svg',
                              service: 'Food &\nBeverages',
                              backColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              showFav: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.serviceItemModel3,
                            updateCallback: () => setState(() {}),
                            child: ServiceItemWidget(
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/vfzeyf3tj3t6/service3.svg',
                              service: 'Flowers and\nGifts',
                              backColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              showFav: false,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.serviceItemModel4,
                            updateCallback: () => setState(() {}),
                            child: ServiceItemWidget(
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2fgc3gdh8yhv/service4.svg',
                              service: 'Pet Supplies',
                              backColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.serviceItemModel5,
                            updateCallback: () => setState(() {}),
                            child: ServiceItemWidget(
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pf8gcxslnimv/service5.svg',
                              service: 'Electronics',
                              backColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          wrapWithModel(
                            model: _model.serviceItemModel6,
                            updateCallback: () => setState(() {}),
                            child: ServiceItemWidget(
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/slaux4318dgn/service6.svg',
                              service: 'Groceries',
                              backColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 45.0, 20.0, 50.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Promotions & Offers',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 230.0,
                                    height: 110.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/card_back.jpg',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.79, 0.02),
                                          child: Text(
                                            'Save 20% on\nyour first delivery!',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Segoe UI',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.98, 0.42),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/drone.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 230.0,
                                    height: 110.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/card_back.jpg',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.79, 0.02),
                                            child: Text(
                                              'Monthly subscription\nfor unlimited instant\ndelivery.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.98, 0.42),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/drone.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 40.0, 0.0, 0.0),
                              child: Text(
                                'Popular Services',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.serviceItemModel7,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/o47uhjdhpx83/service1.svg',
                                        service: 'Medical\nSupplies',
                                        backColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        showFav: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel8,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/lyquxc1q1nwh/service2.svg',
                                        service: 'Food &\nBeverages',
                                        backColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        showFav: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel9,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/vfzeyf3tj3t6/service3.svg',
                                        service: 'Flowers and\nGifts',
                                        backColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        showFav: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel10,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2fgc3gdh8yhv/service4.svg',
                                        service: 'Pet Supplies',
                                        backColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        showFav: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel11,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pf8gcxslnimv/service5.svg',
                                        service: 'Electronics',
                                        backColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        showFav: true,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel12,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/slaux4318dgn/service6.svg',
                                        service: 'Groceries',
                                        backColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        showFav: true,
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
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
