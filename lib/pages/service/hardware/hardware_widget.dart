import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/components/service_item1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hardware_model.dart';
export 'hardware_model.dart';

class HardwareWidget extends StatefulWidget {
  const HardwareWidget({super.key});

  @override
  State<HardwareWidget> createState() => _HardwareWidgetState();
}

class _HardwareWidgetState extends State<HardwareWidget> {
  late HardwareModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HardwareModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Hardware'});
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
        title: 'Hardware',
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
                buttonSize: 54.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('HARDWARE_PAGE_chevron_left_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                'Hardware',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
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
                                  23.0, 0.0, 45.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel1,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  imgwidth: 42.0,
                                  imgheight: 42.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/gbcg1u8hgnxa/Tools.png',
                                  itemName: 'Tools',
                                  componentWidth: 69.0,
                                  componentHeight: 88.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 45.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel2,
                                updateCallback: () => setState(() {}),
                                child: MenuItemWidget(
                                  imgwidth: 39.0,
                                  imgheight: 42.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/x7xmzb9ecvh9/Building_Materials.png',
                                  itemName: 'Building \nMaterials',
                                  componentWidth: 79.0,
                                  componentHeight: 88.0,
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.menuItemModel3,
                              updateCallback: () => setState(() {}),
                              child: MenuItemWidget(
                                imgwidth: 53.0,
                                imgheight: 42.0,
                                imgpath:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/7p9exnlogfta/Safety_Equipment.png',
                                itemName: 'Safety \nEquipment',
                                componentWidth: 73.0,
                                componentHeight: 88.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 393.0,
                        height: 678.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 86.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.featuredProductModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2tktif5rx0cj/Frame_48_(2).png',
                                                name: 'Hammers',
                                                description:
                                                    'Lorem ipsum dolor sit amet',
                                                prize: 30,
                                                soldOut: false,
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.featuredProductModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/bb59hl6953az/Nails_and_Screws.png',
                                                name: 'Nails and Screws',
                                                description:
                                                    'Lorem ipsum dolor sit amet',
                                                prize: 30,
                                                soldOut: false,
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.featuredProductModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/z8coe2wutlp5/Safety_Helmets.png',
                                                name: 'Safety Helmets',
                                                description:
                                                    'Lorem ipsum dolor sit amet',
                                                prize: 30,
                                                soldOut: false,
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 17.0)),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      23.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 17.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              wrapWithModel(
                                                model: _model
                                                    .featuredProductModel4,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: FeaturedProductWidget(
                                                  imgUrl:
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/nknv5hghds7w/Gloves.png',
                                                  name: 'Gloves',
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
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/hk45xj6q5ap3/Wood_Glue.png',
                                                  name: 'Wood Glue',
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
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/z4b99qdhx5al/Nail_Gun.png',
                                                  name: 'Nail Gun',
                                                  description:
                                                      'Lorem ipsum dolor sit amet',
                                                  prize: 30,
                                                  soldOut: false,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 17.0)),
                                          ),
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
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        23.0, 25.0, 0.0, 0.0),
                                    child: Text(
                                      'Services',
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
                                      20.0, 16.0, 20.0, 1.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3.0, 0.0, 18.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.serviceItem1Model1,
                                          updateCallback: () => setState(() {}),
                                          child: ServiceItem1Widget(
                                            imgwidth: 36.0,
                                            imgheight: 36.0,
                                            imgpath:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/e90jx0l3yx01/Tool_Rentals.png',
                                            itemName: 'Tool Rentals',
                                            componentWidth: 105.0,
                                            componentHeight: 79.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 26.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.serviceItem1Model2,
                                          updateCallback: () => setState(() {}),
                                          child: ServiceItem1Widget(
                                            imgwidth: 39.0,
                                            imgheight: 39.0,
                                            imgpath:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/28sqynvklv7m/Installation_Services.png',
                                            itemName: 'Installation \nServices',
                                            componentWidth: 104.0,
                                            componentHeight: 78.0,
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.serviceItem1Model3,
                                        updateCallback: () => setState(() {}),
                                        child: ServiceItem1Widget(
                                          imgwidth: 41.0,
                                          imgheight: 41.0,
                                          imgpath:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/t0ii5l366izk/General_Construction_.png',
                                          itemName: 'General \nConstruction ',
                                          componentWidth: 88.0,
                                          componentHeight: 82.0,
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
