import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/components/service_item1_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'pet_supplies_model.dart';
export 'pet_supplies_model.dart';

class PetSuppliesWidget extends StatefulWidget {
  const PetSuppliesWidget({super.key});

  @override
  State<PetSuppliesWidget> createState() => _PetSuppliesWidgetState();
}

class _PetSuppliesWidgetState extends State<PetSuppliesWidget> {
  late PetSuppliesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PetSuppliesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PetSupplies'});
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
        title: 'PetSupplies',
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
                  logFirebaseEvent('PET_SUPPLIES_chevron_left_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                'Pet Supplies',
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  21.0, 0.0, 49.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel1,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 34.0,
                                  imgheight: 40.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/h42gv0u7w0oa/Pet_Food.png',
                                  itemName: 'Pet Food',
                                  componentWidth: 69.0,
                                  componentHeight: 86.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 45.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel2,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 44.0,
                                  imgheight: 40.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/je6df24czz4r/Pet_Toys.png',
                                  itemName: 'Pet Toys',
                                  componentWidth: 79.0,
                                  componentHeight: 86.0,
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.menuItemModel3,
                              updateCallback: () => setState(() {}),
                              child: const MenuItemWidget(
                                imgwidth: 43.0,
                                imgheight: 43.0,
                                imgpath:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/gn7hemqz0sb8/Pet_Care_Products.png',
                                itemName: 'Pet Care Products',
                                componentWidth: 67.0,
                                componentHeight: 86.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 393.0,
                        height: 680.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 60.0),
                          child: SingleChildScrollView(
                            primary: false,
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
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.featuredProductModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const FeaturedProductWidget(
                                                imgUrl:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2l3vdaq9k7ag/Dog_Food.png',
                                                name: 'Dog Food',
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
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/rwqsvqjdw7jj/Cat_Litter.png',
                                                name: 'Cat Litter',
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
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/7botn1yn62u7/Pet_Shampoos.png',
                                                name: 'Pet Shampoos',
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
                                      23.0, 0.0, 23.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 25.0, 0.0, 0.0),
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 1.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      3.0, 0.0, 18.0, 0.0),
                                              child: wrapWithModel(
                                                model:
                                                    _model.serviceItem1Model1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const ServiceItem1Widget(
                                                  imgwidth: 36.0,
                                                  imgheight: 36.0,
                                                  imgpath:
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/6iop0ykrzdfd/Veterinary_Services.png',
                                                  itemName:
                                                      'Veterinary Services',
                                                  componentWidth: 105.0,
                                                  componentHeight: 79.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 14.0, 0.0),
                                              child: wrapWithModel(
                                                model:
                                                    _model.serviceItem1Model2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const ServiceItem1Widget(
                                                  imgwidth: 37.0,
                                                  imgheight: 37.0,
                                                  imgpath:
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ayv22yh4x3x7/Pet_Grooming.png',
                                                  itemName: 'Pet \nGrooming',
                                                  componentWidth: 104.0,
                                                  componentHeight: 78.0,
                                                ),
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.serviceItem1Model3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: const ServiceItem1Widget(
                                                imgwidth: 36.0,
                                                imgheight: 36.0,
                                                imgpath:
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/gs8i5y4pinq1/Kennels_and_dog_hotels.png',
                                                itemName:
                                                    'Kennels and dog hotels',
                                                componentWidth: 104.0,
                                                componentHeight: 78.0,
                                              ),
                                            ),
                                          ],
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
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        23.0, 23.0, 0.0, 0.0),
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
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 35.0),
                                  child: Container(
                                    width: 350.0,
                                    height: 111.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF1E5B9),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 29.0, 0.0, 0.0),
                                          child: Text(
                                            'Buy 1 Get 1 Free \non select pet toys',
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
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  196.0, 0.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/pngaaa_1.png',
                                              width: 120.0,
                                              height: 184.0,
                                              fit: BoxFit.cover,
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
