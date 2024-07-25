import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'groceries_model.dart';
export 'groceries_model.dart';

class GroceriesWidget extends StatefulWidget {
  const GroceriesWidget({super.key});

  @override
  State<GroceriesWidget> createState() => _GroceriesWidgetState();
}

class _GroceriesWidgetState extends State<GroceriesWidget>
    with TickerProviderStateMixin {
  late GroceriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroceriesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Groceries'});
    animationsMap.addAll({
      'menuItemOnPageLoadAnimation1': AnimationInfo(
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
      'menuItemOnPageLoadAnimation2': AnimationInfo(
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
      'menuItemOnPageLoadAnimation3': AnimationInfo(
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
      'menuItemOnPageLoadAnimation4': AnimationInfo(
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
      'customNavbarOnPageLoadAnimation': AnimationInfo(
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
              logFirebaseEvent('GROCERIES_PAGE_chevron_left_ICN_ON_TAP');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Groceries',
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 10.0, 20.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          wrapWithModel(
                            model: _model.menuItemModel1,
                            updateCallback: () => setState(() {}),
                            child: const MenuItemWidget(
                              imgwidth: 37.0,
                              imgheight: 37.0,
                              imgpath:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ytmhl36gbh1u/Fresh_Produce.png',
                              itemName: 'Fresh\nProduce',
                              componentWidth: 69.0,
                              componentHeight: 83.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['menuItemOnPageLoadAnimation1']!),
                          wrapWithModel(
                            model: _model.menuItemModel2,
                            updateCallback: () => setState(() {}),
                            child: const MenuItemWidget(
                              imgwidth: 41.0,
                              imgheight: 33.0,
                              imgpath:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/1hym79y7povp/Dairy_Products.png',
                              itemName: 'Dairy\nProducts',
                              componentWidth: 79.0,
                              componentHeight: 83.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['menuItemOnPageLoadAnimation2']!),
                          wrapWithModel(
                            model: _model.menuItemModel3,
                            updateCallback: () => setState(() {}),
                            child: const MenuItemWidget(
                              imgwidth: 51.0,
                              imgheight: 35.0,
                              imgpath:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/f3ar7m2pqrvf/Bakery_and_Bread.png',
                              itemName: 'Bakery \nand Bread',
                              componentWidth: 79.0,
                              componentHeight: 83.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['menuItemOnPageLoadAnimation3']!),
                          wrapWithModel(
                            model: _model.menuItemModel4,
                            updateCallback: () => setState(() {}),
                            child: const MenuItemWidget(
                              imgwidth: 52.0,
                              imgheight: 40.0,
                              imgpath:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/1m44qhoic9t2/Meat_%26_Seafood.png',
                              itemName: 'Meat & Seafood',
                              componentWidth: 79.0,
                              componentHeight: 83.0,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['menuItemOnPageLoadAnimation4']!),
                        ],
                      ),
                    ),
                    Container(
                      width: 393.0,
                      height: 800.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    23.0, 0.0, 0.0, 10.0),
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
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    23.0, 0.0, 23.0, 0.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.featuredProductModel1,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ncund8z8abrb/Freshfruit.png',
                                          name: 'Fresh Fruits',
                                          description:
                                              'Lorem ipsum dolor sit amet',
                                          prize: 30,
                                          soldOut: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.featuredProductModel2,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/tl2x1nij5o6i/Milk_and_Cheese.png',
                                          name: 'Milk and Cheese',
                                          description:
                                              'Lorem ipsum dolor sit amet',
                                          prize: 30,
                                          soldOut: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.featuredProductModel3,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/00sdkh30joxe/Chips_Cookies.png',
                                          name: 'Chips Cookies',
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
                            const SizedBox(
                              width: 354.0,
                              child: Divider(
                                height: 0.0,
                                thickness: 0.5,
                                color: Color(0xFF16283E),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    23.0, 17.0, 23.0, 0.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.featuredProductModel4,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/1lqxvh3j7xsp/Egg.png',
                                          name: 'Egg',
                                          description:
                                              'Lorem ipsum dolor sit amet',
                                          prize: 30,
                                          soldOut: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.featuredProductModel5,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/u2nxkh7stmsd/Meat.png',
                                          name: 'Meat',
                                          description:
                                              'Lorem ipsum dolor sit amet',
                                          prize: 30,
                                          soldOut: false,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.featuredProductModel6,
                                        updateCallback: () => setState(() {}),
                                        child: const FeaturedProductWidget(
                                          imgUrl:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/yklx43iioeeq/Snack.png',
                                          name: 'Snack',
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
                            const SizedBox(
                              width: 354.0,
                              child: Divider(
                                height: 0.0,
                                thickness: 0.5,
                                color: Color(0xFF16283E),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    23.0, 25.0, 0.0, 0.0),
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
                                  0.0, 15.0, 0.0, 22.0),
                              child: Container(
                                width: 350.0,
                                height: 111.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF9BCEE4),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          138.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(15.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/Default_Blog_Image_1200_x_628_px_43_1.png',
                                          width: 224.0,
                                          height: 117.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          21.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        'Weekly \ndeals on fresh \nproduce ',
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
            ),
            wrapWithModel(
              model: _model.customNavbarModel,
              updateCallback: () => setState(() {}),
              child: const CustomNavbarWidget(),
            ).animateOnPageLoad(
                animationsMap['customNavbarOnPageLoadAnimation']!),
          ],
        ),
      ),
    );
  }
}
