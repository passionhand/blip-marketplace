import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'electronic_model.dart';
export 'electronic_model.dart';

class ElectronicWidget extends StatefulWidget {
  const ElectronicWidget({super.key});

  @override
  State<ElectronicWidget> createState() => _ElectronicWidgetState();
}

class _ElectronicWidgetState extends State<ElectronicWidget> {
  late ElectronicModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ElectronicModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Electronic'});
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
        title: 'Electronic',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
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
                buttonSize: 60.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ELECTRONIC_PAGE_chevron_left_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
              title: Text(
                'Electronics',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      color: Colors.white,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: Stack(
              alignment: AlignmentDirectional(0.0, 1.0),
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel1,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  imgwidth: 22.0,
                                  imgheight: 39.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/nvgujjt7sq3x/Mobile_Phones.png',
                                  itemName: 'Mobile\nPhones',
                                  componentWidth: 69.0,
                                  componentHeight: 83.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 26.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel2,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  imgwidth: 47.0,
                                  imgheight: 32.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/k1dnyndwcdba/Laptops.png',
                                  itemName: 'Laptops\n',
                                  componentWidth: 79.0,
                                  componentHeight: 83.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 25.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel3,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  imgwidth: 44.0,
                                  imgheight: 38.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/bxywx8oj8itp/Home_Appliances.png',
                                  itemName: 'Home \nAppliances',
                                  componentWidth: 67.0,
                                  componentHeight: 83.0,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel4,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  imgwidth: 39.0,
                                  imgheight: 39.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/me3c4g9x96op/Accessories.png',
                                  itemName: 'Accessories',
                                  componentWidth: 67.0,
                                  componentHeight: 83.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 393.0,
                        height: 685.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 86.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            23.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Featured Products',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          23.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .featuredProductModel1,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FeaturedProductWidget(
                                                    imgUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/41tklbbtdvmg/Frame_48.png',
                                                    name: 'Smartphones',
                                                    description:
                                                        'Lorem ipsum dolor sit amet',
                                                    prize: 30,
                                                    soldOut: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .featuredProductModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FeaturedProductWidget(
                                                    imgUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/kk3fi2514xes/Frame_48_(1).png',
                                                    name: 'Earphones',
                                                    description:
                                                        'Lorem ipsum dolor sit amet',
                                                    prize: 30,
                                                    soldOut: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .featuredProductModel3,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FeaturedProductWidget(
                                                    imgUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/s84i210h6sh4/95a93fb8e7450c5eed33eed45cff91ae.png',
                                                    name: 'Smart Home ',
                                                    description:
                                                        'Lorem ipsum dolor sit amet',
                                                    prize: 30,
                                                    soldOut: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 13.0)),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 354.0,
                                            child: Divider(
                                              height: 0.0,
                                              thickness: 0.5,
                                              color: Color(0xFF16283E),
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .featuredProductModel4,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FeaturedProductWidget(
                                                    imgUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/g6i5y1di9m42/Frame_48_(3).png',
                                                    name: 'Rice Cooker',
                                                    description:
                                                        'Lorem ipsum dolor sit amet',
                                                    prize: 30,
                                                    soldOut: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .featuredProductModel5,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FeaturedProductWidget(
                                                    imgUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/872odycr0to9/Frame_48_(4).png',
                                                    name: 'Speaker',
                                                    description:
                                                        'Lorem ipsum dolor sit amet',
                                                    prize: 30,
                                                    soldOut: false,
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .featuredProductModel6,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: FeaturedProductWidget(
                                                    imgUrl:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/rvgsqier4j01/f28e597c7c47eef3bc9436c570836af7.png',
                                                    name: 'Washing Machine',
                                                    description:
                                                        'Lorem ipsum dolor sit amet',
                                                    prize: 30,
                                                    soldOut: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 13.0)),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 354.0,
                                            child: Divider(
                                              height: 0.0,
                                              thickness: 0.5,
                                              color: Color(0xFF16283E),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            28.0, 23.0, 0.0, 0.0),
                                        child: Text(
                                          'Promotions',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Segoe UI',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Container(
                                        width: 350.0,
                                        height: 111.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFDCD3E2),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15.0),
                                            bottomRight: Radius.circular(15.0),
                                            topLeft: Radius.circular(15.0),
                                            topRight: Radius.circular(15.0),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      198.0, 0.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/visualhunter-e1f15b5446d7f7f7dd4bcb5fadd7e30e_1.png',
                                                  width: 183.0,
                                                  height: 183.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      165.0, 16.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/pngwing_3.png',
                                                  width: 124.0,
                                                  height: 124.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 16.0, 0.0, 0.0),
                                                child: Text(
                                                  '20% off on \nselected \ngadgets',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.customNavbarModel,
                  updateCallback: () => setState(() {}),
                  child: CustomNavbarWidget(),
                ),
              ],
            ),
          ),
        ));
  }
}
