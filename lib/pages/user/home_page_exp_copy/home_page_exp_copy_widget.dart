import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/featured_products_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_page_exp_copy_model.dart';
export 'home_page_exp_copy_model.dart';

class HomePageExpCopyWidget extends StatefulWidget {
  const HomePageExpCopyWidget({super.key});

  @override
  State<HomePageExpCopyWidget> createState() => _HomePageExpCopyWidgetState();
}

class _HomePageExpCopyWidgetState extends State<HomePageExpCopyWidget> {
  late HomePageExpCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageExpCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'HomePageExpCopy'});
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: const Icon(
              Icons.chevron_left_rounded,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('HOME_EXP_COPY_chevron_left_rounded_ICN_O');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
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
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 86.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 25.0, 0.0, 35.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
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
                                          'HOME_EXP_COPY_Container_7vbo2rwh_ON_TAP');
                                      logFirebaseEvent(
                                          'ServiceItem_navigate_to');

                                      context.pushNamed('MedicalSupplies');
                                    },
                                    child: wrapWithModel(
                                      model: _model.serviceItemModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/3n3hwy9hqtho/service1.png',
                                        service: 'Medical Supplies',
                                        backgroundColor: Colors.white,
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
                                          'HOME_EXP_COPY_Container_j7chcxtp_ON_TAP');
                                      logFirebaseEvent(
                                          'ServiceItem_navigate_to');

                                      context.pushNamed('FoodBeverages');
                                    },
                                    child: wrapWithModel(
                                      model: _model.serviceItemModel2,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/enzhj1f3jr7s/service2.png',
                                        service: 'Food &\nBeverages',
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
                                          'HOME_EXP_COPY_Container_7s1wr1ux_ON_TAP');
                                      logFirebaseEvent(
                                          'ServiceItem_navigate_to');

                                      context.pushNamed('FlowersGifts');
                                    },
                                    child: wrapWithModel(
                                      model: _model.serviceItemModel3,
                                      updateCallback: () => setState(() {}),
                                      child: ServiceItemWidget(
                                        image:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/17obnmplf7by/service3.png',
                                        service: 'Flowers and\nGifts',
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
                        height: 650.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 40.0, 25.0, 20.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.featuredProductModel,
                                          updateCallback: () => setState(() {}),
                                          child: const FeaturedProductWidget(
                                            imgUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pr5j7nwpoe1a/Blood_Pressure_.png',
                                            name: 'Blood Pressure ',
                                            description:
                                                'Lorem ipsum dolor sit amet',
                                            prize: 30,
                                            soldOut: true,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 15.0)),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 40.0, 25.0, 20.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.featuredProductsModel1,
                                          updateCallback: () => setState(() {}),
                                          child: const FeaturedProductsWidget(
                                            imgUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/6gw8nie5sl5i/water.png',
                                            name: 'Water',
                                            description:
                                                'Lorem ipsum dolor sit amet',
                                            prize: 30,
                                            soldOut: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.featuredProductsModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const FeaturedProductsWidget(
                                            imgUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/wkvbaguxd2dh/toilet_paper.png',
                                            name: 'Toilet Paper',
                                            description:
                                                'Lorem ipsum dolor sit amet',
                                            prize: 30,
                                            soldOut: false,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.featuredProductsModel3,
                                          updateCallback: () => setState(() {}),
                                          child: const FeaturedProductsWidget(
                                            imgUrl:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/fle489vyzsp3/detergent.png',
                                            name: 'Detergent',
                                            description:
                                                'Lorem ipsum dolor sit amet',
                                            prize: 30,
                                            soldOut: false,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 15.0)),
                                    ),
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
            wrapWithModel(
              model: _model.customNavbarModel,
              updateCallback: () => setState(() {}),
              child: const CustomNavbarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
