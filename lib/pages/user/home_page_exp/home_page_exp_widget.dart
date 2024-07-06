import '/auth/firebase_auth/auth_util.dart';
import '/components/featured_products_widget.dart';
import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
        title: 'HomePageExp',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.black,
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
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'HOME_PAGE_EXP_PAGE_Icon_av6xw6c3_ON_TAP');
                      logFirebaseEvent('Icon_auth');
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('signup', context.mounted);
                    },
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
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
                              showFav: false,
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
                              showFav: false,
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 40.0, 25.0, 20.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.featuredProductsModel1,
                                    updateCallback: () => setState(() {}),
                                    child: FeaturedProductsWidget(
                                      imgUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/9oarinrmn79d/burger.png',
                                      name: 'Burger',
                                      description: 'Lorem ipsum dolor sit amet',
                                      prize: 30,
                                      soldOut: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.featuredProductsModel2,
                                    updateCallback: () => setState(() {}),
                                    child: FeaturedProductsWidget(
                                      imgUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/z10adsx3xq2w/medicine.png',
                                      name: 'Medicine',
                                      description: 'Lorem ipsum dolor sit amet',
                                      prize: 30,
                                      soldOut: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.featuredProductsModel3,
                                    updateCallback: () => setState(() {}),
                                    child: FeaturedProductsWidget(
                                      imgUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/5u9bs5q4opdc/drink.png',
                                      name: 'Soft Drink',
                                      description: 'Lorem ipsum dolor sit amet',
                                      prize: 30,
                                      soldOut: false,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 15.0)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 40.0, 25.0, 20.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.featuredProductsModel4,
                                    updateCallback: () => setState(() {}),
                                    child: FeaturedProductsWidget(
                                      imgUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/6gw8nie5sl5i/water.png',
                                      name: 'Water',
                                      description: 'Lorem ipsum dolor sit amet',
                                      prize: 30,
                                      soldOut: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.featuredProductsModel5,
                                    updateCallback: () => setState(() {}),
                                    child: FeaturedProductsWidget(
                                      imgUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/wkvbaguxd2dh/toilet_paper.png',
                                      name: 'Toilet Paper',
                                      description: 'Lorem ipsum dolor sit amet',
                                      prize: 30,
                                      soldOut: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.featuredProductsModel6,
                                    updateCallback: () => setState(() {}),
                                    child: FeaturedProductsWidget(
                                      imgUrl:
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/fle489vyzsp3/detergent.png',
                                      name: 'Detergent',
                                      description: 'Lorem ipsum dolor sit amet',
                                      prize: 30,
                                      soldOut: false,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 15.0)),
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
        ));
  }
}
