import '/auth/firebase_auth/auth_util.dart';
import '/components/address_widget.dart';
import '/components/custom_navbar_widget.dart';
import '/components/featured_products_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page_exp_model.dart';
export 'home_page_exp_model.dart';

class HomePageExpWidget extends StatefulWidget {
  const HomePageExpWidget({super.key});

  @override
  State<HomePageExpWidget> createState() => _HomePageExpWidgetState();
}

class _HomePageExpWidgetState extends State<HomePageExpWidget> {
  late HomePageExpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageExpModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePageExp'});
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
              Align(
                alignment: const AlignmentDirectional(0.0, -0.96),
                child: wrapWithModel(
                  model: _model.addressModel,
                  updateCallback: () => setState(() {}),
                  child: const AddressWidget(),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('HOME_PAGE_EXP_PAGE_Icon_av6xw6c3_ON_TAP');
                  logFirebaseEvent('Icon_auth');
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('Splash1', context.mounted);
                },
                child: const Icon(
                  Icons.notifications_none_sharp,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('HOME_PAGE_EXP_PAGE_Icon_u88h6fpi_ON_TAP');
                  logFirebaseEvent('Icon_navigate_to');

                  context.pushNamed('ProfilePage');
                },
                child: const Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('HOME_PAGE_EXP_PAGE_Icon_m5m4xkuz_ON_TAP');
                  logFirebaseEvent('Icon_auth');
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('Splash1', context.mounted);
                },
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Stack(
          alignment: const AlignmentDirectional(0.0, 1.0),
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 86.0),
              child: SingleChildScrollView(
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
                                          'HOME_EXP_Container_kbiitat6_ON_TAP');
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
                                          'HOME_EXP_Container_toh4yc1s_ON_TAP');
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
                                          'HOME_EXP_Container_qsnj8t6z_ON_TAP');
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
                                          'HOME_EXP_Container_5c36nfwq_ON_TAP');
                                      logFirebaseEvent(
                                          'ServiceItem_navigate_to');

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
                                          'HOME_EXP_Container_h2ffylxa_ON_TAP');
                                      logFirebaseEvent(
                                          'ServiceItem_navigate_to');

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
                                          'HOME_EXP_Container_vwhm84vl_ON_TAP');
                                      logFirebaseEvent(
                                          'ServiceItem_navigate_to');

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
                                        model: _model.featuredProductsModel1,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductsWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/9oarinrmn79d/burger.png',
                                          name: 'Burger',
                                          description:
                                              'Lorem ipsum dolor sit amet',
                                          prize: 30,
                                          soldOut: true,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.featuredProductsModel2,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductsWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/z10adsx3xq2w/medicine.png',
                                          name: 'Medicine',
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/5u9bs5q4opdc/drink.png',
                                          name: 'Soft Drink',
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
                                        model: _model.featuredProductsModel4,
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
                                        model: _model.featuredProductsModel5,
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
                                        model: _model.featuredProductsModel6,
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
