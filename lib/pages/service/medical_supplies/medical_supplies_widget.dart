import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'medical_supplies_model.dart';
export 'medical_supplies_model.dart';

class MedicalSuppliesWidget extends StatefulWidget {
  const MedicalSuppliesWidget({super.key});

  @override
  State<MedicalSuppliesWidget> createState() => _MedicalSuppliesWidgetState();
}

class _MedicalSuppliesWidgetState extends State<MedicalSuppliesWidget> {
  late MedicalSuppliesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicalSuppliesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MedicalSupplies'});
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
        title: 'MedicalSupplies',
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
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('MEDICAL_SUPPLIES_chevron_left_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                'Medical Supplies',
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
            body: Stack(
              alignment: const AlignmentDirectional(0.0, 1.0),
              children: [
                SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 23.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.menuItemModel1,
                                  updateCallback: () => setState(() {}),
                                  child: const MenuItemWidget(
                                    imgwidth: 43.0,
                                    imgheight: 43.0,
                                    imgpath:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/lapdoieauv6j/OTC_Medications.png',
                                    itemName: 'OTC Medications',
                                    componentWidth: 69.0,
                                    componentHeight: 85.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 15.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.menuItemModel2,
                                  updateCallback: () => setState(() {}),
                                  child: const MenuItemWidget(
                                    imgwidth: 38.0,
                                    imgheight: 35.0,
                                    imgpath:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/td7v91m22gov/First_Aid_Kits.png',
                                    itemName: 'First Aid Kits',
                                    componentWidth: 79.0,
                                    componentHeight: 65.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 28.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.menuItemModel3,
                                  updateCallback: () => setState(() {}),
                                  child: const MenuItemWidget(
                                    imgwidth: 37.0,
                                    imgheight: 41.0,
                                    imgpath:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/9q7aamklmtq1/Medical_Equipment.png',
                                    itemName: 'Medical Equipment',
                                    componentWidth: 67.0,
                                    componentHeight: 83.0,
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.menuItemModel4,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 37.0,
                                  imgheight: 28.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/zsxy4p6bfwgn/Health_Monitors.png',
                                  itemName: 'Health Monitors',
                                  componentWidth: 67.0,
                                  componentHeight: 75.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 393.0,
                        height: 681.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 86.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.featuredProductModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pr5j7nwpoe1a/Blood_Pressure_.png',
                                                name: 'Blood \nPressure ',
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
                                              child: const FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/851epf8kqjfj/Thermometers.png',
                                                name: 'Thermometers',
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
                                              child: const FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/o5y0ko14g3nl/Surgical_Masks.png',
                                                name: 'Surgical Masks',
                                                description:
                                                    'Lorem ipsum dolor sit amet',
                                                prize: 30,
                                                soldOut: false,
                                              ),
                                            ),
                                          ].divide(const SizedBox(width: 17.0)),
                                        ),
                                      ),
                                      const SizedBox(
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      23.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
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
                                                child: const FeaturedProductWidget(
                                                  imgUrl:
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/s4zq14gp0iay/Interlac.png',
                                                  name: 'Interlac',
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
                                                child: const FeaturedProductWidget(
                                                  imgUrl:
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/huo33cx3t3i1/Ginkgo.png',
                                                  name: 'Ginkgo',
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
                                                child: const FeaturedProductWidget(
                                                  imgUrl:
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2y9k1yda87qp/HerbaVit.png',
                                                  name: 'HerbaVit',
                                                  description:
                                                      'Lorem ipsum dolor sit amet',
                                                  prize: 30,
                                                  soldOut: false,
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 17.0)),
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
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.customNavbarModel,
                  updateCallback: () => setState(() {}),
                  child: const CustomNavbarWidget(),
                ),
              ],
            ),
          ),
        ));
  }
}
