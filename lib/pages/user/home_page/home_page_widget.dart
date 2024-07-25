import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/address_widget.dart';
import '/components/bottom_sheet_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
    required this.showbottomsheet,
  });

  final bool? showbottomsheet;

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_PAGE_HomePage_ON_INIT_STATE');
      if (widget.showbottomsheet!) {
        logFirebaseEvent('HomePage_bottom_sheet');
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return WebViewAware(
              child: GestureDetector(
                onTap: () => _model.unfocusNode.canRequestFocus
                    ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                    : FocusScope.of(context).unfocus(),
                child: Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: const SizedBox(
                    height: 460.0,
                    child: BottomSheetWidget(),
                  ),
                ),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
      logFirebaseEvent('HomePage_backend_call');
      _model.getCategoriesResult =
          await GraphQLQueryGroup.getCategoriesCall.call();
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
        backgroundColor: FlutterFlowTheme.of(context).primary,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Row(
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
              Flexible(
                child: wrapWithModel(
                  model: _model.addressModel,
                  updateCallback: () => setState(() {}),
                  child: const AddressWidget(),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('HOME_PAGE_PAGE_Icon_vld9c5fa_ON_TAP');
                    logFirebaseEvent('Icon_auth');
                    GoRouter.of(context).prepareAuthEvent();
                    await authManager.signOut();
                    GoRouter.of(context).clearRedirectLocation();

                    context.goNamedAuth('Splash1', context.mounted);
                  },
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 70.0,
                                    height: 70.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/Frame_8.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.8, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 50.0, 0.0, 0.0),
                                    child: Text(
                                      'Your one-stop solution for instant deliveries.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Segoe UI',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: Text(
                                      'Welcome to Blip!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Segoe UI',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: false,
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
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 35.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
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
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Container_xjuzn72s_ON_TAP');
                                    logFirebaseEvent('ServiceItem_navigate_to');

                                    context.pushNamed('MedicalSupplies');
                                  },
                                  child: wrapWithModel(
                                    model: _model.serviceItemModel1,
                                    updateCallback: () => setState(() {}),
                                    child: ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/3n3hwy9hqtho/service1.png',
                                      service: 'Medical \nSupplies',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                        'HOME_PAGE_PAGE_Container_ylh6ekeg_ON_TAP');
                                    logFirebaseEvent('ServiceItem_navigate_to');

                                    context.pushNamed('FoodBeverages');
                                  },
                                  child: wrapWithModel(
                                    model: _model.serviceItemModel2,
                                    updateCallback: () => setState(() {}),
                                    child: ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/enzhj1f3jr7s/service2.png',
                                      service: 'Food & \nBeverages',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                        'HOME_PAGE_PAGE_Container_y9tctoqa_ON_TAP');
                                    logFirebaseEvent('ServiceItem_navigate_to');

                                    context.pushNamed('FlowersGifts');
                                  },
                                  child: wrapWithModel(
                                    model: _model.serviceItemModel3,
                                    updateCallback: () => setState(() {}),
                                    child: ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/17obnmplf7by/service3.png',
                                      service: 'Flowers and \nGifts',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
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
                                    logFirebaseEvent(
                                        'HOME_PAGE_PAGE_Container_8ockwta4_ON_TAP');
                                    logFirebaseEvent('ServiceItem_navigate_to');

                                    context.pushNamed('PetSupplies');
                                  },
                                  child: wrapWithModel(
                                    model: _model.serviceItemModel4,
                                    updateCallback: () => setState(() {}),
                                    child: ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/73po5kydqylz/service4.png',
                                      service: 'Pet Supplies',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                        'HOME_PAGE_PAGE_Container_rnidsref_ON_TAP');
                                    logFirebaseEvent('ServiceItem_navigate_to');

                                    context.pushNamed('Electronic');
                                  },
                                  child: wrapWithModel(
                                    model: _model.serviceItemModel5,
                                    updateCallback: () => setState(() {}),
                                    child: ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/hlprwa4dg643/service5.png',
                                      service: 'Electronics',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                        'HOME_PAGE_PAGE_Container_pl0ornj6_ON_TAP');
                                    logFirebaseEvent('ServiceItem_navigate_to');

                                    context.pushNamed('Groceries');
                                  },
                                  child: wrapWithModel(
                                    model: _model.serviceItemModel6,
                                    updateCallback: () => setState(() {}),
                                    child: ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/l3sk64mx29br/service6.png',
                                      service: 'Groceries',
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(const SizedBox(height: 10.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: double.infinity,
                      height: 835.0,
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
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 45.0, 20.0, 50.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Text(
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
                            ),
                            Flexible(
                              child: SingleChildScrollView(
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
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.79, 0.0),
                                            child: Text(
                                              'Save 20% on\nyour first delivery!',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.3, 0.42),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Lovepik_com-401893396-drone-delivery_1.png',
                                                width: 141.0,
                                                height: 95.0,
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
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.3, 0.42),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Lovepik_com-401893396-drone-delivery_1.png',
                                                width: 141.0,
                                                height: 95.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -0.79, 0.0),
                                            child: Text(
                                              'Monthly subscription\nfor unlimited instant\ndelivery.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 12.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 40.0, 0.0, 11.0),
                              child: Text(
                                'Popular Products and Services',
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
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    wrapWithModel(
                                      model: _model.serviceItemModel7,
                                      updateCallback: () => setState(() {}),
                                      child: const ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/icntm1xojq0b/Courier_Services.png',
                                        service: 'Courier \nServices',
                                        backgroundColor: Color(0xFFEEEEEE),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel8,
                                      updateCallback: () => setState(() {}),
                                      child: const ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/xyeba7hfd2yn/Construction_Services.png',
                                        service: 'Construction\nServices',
                                        backgroundColor: Color(0xFFEEEEEE),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_Container_es30lcqr_ON_TAP');
                                        logFirebaseEvent(
                                            'ServiceItem_navigate_to');

                                        context.pushNamed('PersonalCareItems');
                                      },
                                      child: wrapWithModel(
                                        model: _model.serviceItemModel9,
                                        updateCallback: () => setState(() {}),
                                        child: const ServiceItemWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pfrfn0ujhvw5/Personal_Care_Items.png',
                                          service: 'Personal Care Items',
                                          backgroundColor: Color(0xFFEEEEEE),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'HOME_PAGE_PAGE_Container_aj9lnfb6_ON_TAP');
                                        logFirebaseEvent(
                                            'ServiceItem_navigate_to');

                                        context.pushNamed('Hardware');
                                      },
                                      child: wrapWithModel(
                                        model: _model.serviceItemModel10,
                                        updateCallback: () => setState(() {}),
                                        child: const ServiceItemWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ijmbicptbuff/Hardware.png',
                                          service: 'Hardware',
                                          backgroundColor: Color(0xFFEEEEEE),
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
                                            'HOME_PAGE_PAGE_Container_nnfv6k09_ON_TAP');
                                        logFirebaseEvent(
                                            'ServiceItem_navigate_to');

                                        context.pushNamed('FoodBeverages');
                                      },
                                      child: wrapWithModel(
                                        model: _model.serviceItemModel11,
                                        updateCallback: () => setState(() {}),
                                        child: const ServiceItemWidget(
                                          image:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/enzhj1f3jr7s/service2.png',
                                          service: 'Food & \nBeverages',
                                          backgroundColor: Color(0xFFEEEEEE),
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.serviceItemModel12,
                                      updateCallback: () => setState(() {}),
                                      child: const ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pmrkwn59yhn1/Subscription.png',
                                        service: 'Subscription',
                                        backgroundColor: Color(0xFFEEEEEE),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  wrapWithModel(
                                    model: _model.serviceItemModel13,
                                    updateCallback: () => setState(() {}),
                                    child: const ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ao6latifmy58/Clothing%26Accessories.png',
                                      service: 'Clothing and Accessories',
                                      backgroundColor: Color(0xFFEEEEEE),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.serviceItemModel14,
                                    updateCallback: () => setState(() {}),
                                    child: const ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/qjnr2av92cxk/VideoSurveillance.png',
                                      service: 'Video\nSurveillance',
                                      backgroundColor: Color(0xFFEEEEEE),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.serviceItemModel15,
                                    updateCallback: () => setState(() {}),
                                    child: const ServiceItemWidget(
                                      image:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/6qjhn0w6su4f/Eco_Friendly_Delivery.png',
                                      service: 'Eco Friendly Delivery',
                                      backgroundColor: Color(0xFFEEEEEE),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
