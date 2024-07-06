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
import 'household_supplies_model.dart';
export 'household_supplies_model.dart';

class HouseholdSuppliesWidget extends StatefulWidget {
  const HouseholdSuppliesWidget({super.key});

  @override
  State<HouseholdSuppliesWidget> createState() =>
      _HouseholdSuppliesWidgetState();
}

class _HouseholdSuppliesWidgetState extends State<HouseholdSuppliesWidget> {
  late HouseholdSuppliesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HouseholdSuppliesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'HouseholdSupplies'});
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
        title: 'HouseholdSupplies',
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
                  logFirebaseEvent('HOUSEHOLD_SUPPLIES_chevron_left_ICN_ON_T');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                'Household Supplies',
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 44.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.menuItemModel1,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    imgwidth: 38.0,
                                    imgheight: 39.0,
                                    imgpath:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/xcb9eqb9lljl/Cleaning_Products.png',
                                    itemName: 'Cleaning Products',
                                    componentWidth: 69.0,
                                    componentHeight: 82.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 43.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.menuItemModel2,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    imgwidth: 39.0,
                                    imgheight: 40.0,
                                    imgpath:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2da5bwhofvhw/Kitchenware.png',
                                    itemName: 'Kitchenware',
                                    componentWidth: 79.0,
                                    componentHeight: 66.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 21.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.menuItemModel3,
                                  updateCallback: () => setState(() {}),
                                  child: MenuItemWidget(
                                    imgwidth: 38.0,
                                    imgheight: 41.0,
                                    imgpath:
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/gob5at2mbwag/Mop.png',
                                    itemName: 'Mop',
                                    componentWidth: 73.0,
                                    componentHeight: 69.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 393.0,
                        height: 684.0,
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
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/6xfyugx5d5ax/Detergents.png',
                                                name: 'Detergents',
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
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/zsuv0hjclyts/Cookware.png',
                                                name: 'Cookware',
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
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/6fj7t6t7u3ea/Storage_Bins.png',
                                                name: 'Storage Bins',
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
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/g2z535qtesib/Sponge.png',
                                                  name: 'Sponge',
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
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/sqc7pgnoo8rf/Mop_(2).png',
                                                  name: 'Mop',
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
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/4tdp2j3tsuut/Iron.png',
                                                  name: 'Iron',
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
