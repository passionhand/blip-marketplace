import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_selection_model.dart';
export 'product_selection_model.dart';

class ProductSelectionWidget extends StatefulWidget {
  const ProductSelectionWidget({super.key});

  @override
  State<ProductSelectionWidget> createState() => _ProductSelectionWidgetState();
}

class _ProductSelectionWidgetState extends State<ProductSelectionWidget>
    with TickerProviderStateMixin {
  late ProductSelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductSelectionModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ProductSelection'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        title: 'ProductSelection',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 54.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('PRODUCT_SELECTION_chevron_left_ICN_ON_TA');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: wrapWithModel(
                  model: _model.searchModel,
                  updateCallback: () => setState(() {}),
                  child: SearchWidget(),
                ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: Container(
              height: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional(0.0, 1.0),
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 86.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: FlutterFlowButtonTabBar(
                                  useToggleButtonStyle: false,
                                  isScrollable: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  unselectedLabelStyle: TextStyle(),
                                  labelColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  unselectedLabelColor: Color(0xFF252525),
                                  backgroundColor: Color(0xFF252525),
                                  unselectedBackgroundColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  unselectedBorderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 0.0,
                                  borderRadius: 25.0,
                                  elevation: 0.0,
                                  labelPadding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  tabs: [
                                    Tab(
                                      text: 'Medical',
                                    ),
                                    Tab(
                                      text: 'Food',
                                    ),
                                    Tab(
                                      text: 'Personal Care',
                                    ),
                                    Tab(
                                      text: 'Office',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [
                                      () async {},
                                      () async {},
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    KeepAliveWidgetWrapper(
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 60.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        21.0, 10.0, 0.0, 20.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  3.0,
                                                                  15.0,
                                                                  3.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .dropDownValueController1 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: ['Option 1'],
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .dropDownValue1 =
                                                                val),
                                                        width: 102.0,
                                                        height: 35.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        hintText: 'Filter',
                                                        searchHintText:
                                                            'Search for an item...',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                        elevation: 0.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 10.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    13.0,
                                                                    4.0,
                                                                    9.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: true,
                                                        isSearchable: true,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  3.0,
                                                                  18.0,
                                                                  3.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .dropDownValueController2 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: ['Option 1'],
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .dropDownValue2 =
                                                                val),
                                                        width: 118.0,
                                                        height: 35.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        hintText: 'Price Range',
                                                        searchHintText:
                                                            'Search for an item...',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                        elevation: 0.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 10.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    13.0,
                                                                    4.0,
                                                                    9.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: true,
                                                        isSearchable: true,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  3.0,
                                                                  15.0,
                                                                  3.0),
                                                      child:
                                                          FlutterFlowDropDown<
                                                              String>(
                                                        controller: _model
                                                                .dropDownValueController3 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: ['Option 1'],
                                                        onChanged: (val) =>
                                                            setState(() => _model
                                                                    .dropDownValue3 =
                                                                val),
                                                        width: 103.0,
                                                        height: 35.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Segoe UI',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                        hintText: 'Rating',
                                                        searchHintText:
                                                            'Search for an item...',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 20.0,
                                                        ),
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                        elevation: 0.0,
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderWidth: 0.0,
                                                        borderRadius: 10.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    13.0,
                                                                    4.0,
                                                                    9.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: true,
                                                        isSearchable: true,
                                                        isMultiSelect: false,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .featuredProductModel1,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            FeaturedProductWidget(
                                                          imgUrl:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/3h2m8h83x8vm/Herbakof.png',
                                                          name: 'Herbakof',
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
                                                        child:
                                                            FeaturedProductWidget(
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
                                                            .featuredProductModel3,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            FeaturedProductWidget(
                                                          imgUrl:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2y9k1yda87qp/HerbaVit.png',
                                                          name: 'HerbaVomit',
                                                          description:
                                                              'Lorem ipsum dolor sit amet',
                                                          prize: 30,
                                                          soldOut: false,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 12.0, 0.0, 0.0),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      wrapWithModel(
                                                        model: _model
                                                            .featuredProductModel4,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            FeaturedProductWidget(
                                                          imgUrl:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ogzzj16snelz/Stozzon.png',
                                                          name: 'Herbakof',
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
                                                        child:
                                                            FeaturedProductWidget(
                                                          imgUrl:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/juolz3neasi1/Pharmox.png',
                                                          name: 'Interlac',
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
                                                        child:
                                                            FeaturedProductWidget(
                                                          imgUrl:
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/nsqwu1eydimz/Ginggo.png',
                                                          name: 'HerbaVomit',
                                                          description:
                                                              'Lorem ipsum dolor sit amet',
                                                          prize: 30,
                                                          soldOut: false,
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 27.0, 20.0, 23.0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: 'CONTINUE TO CHECKOUT',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 60.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: Colors.white,
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    KeepAliveWidgetWrapper(
                                      builder: (context) => Container(),
                                    ),
                                    KeepAliveWidgetWrapper(
                                      builder: (context) => Container(),
                                    ),
                                    KeepAliveWidgetWrapper(
                                      builder: (context) => Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 100.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Smartfood_White_Cheddar_Popcorn_2oz.png',
                                      width: double.infinity,
                                      height: 261.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 20.0, 0.0, 0.0),
                                    child: Text(
                                      'Smartfood White Cheddar Popcorn 2oz',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 20.0, 0.0, 14.0),
                                    child: Text(
                                      '\$2.79 (\$1.39/oz)  ',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 355.0,
                                  height: 48.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFCACACA),
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 10.0, 0.0),
                                        child: Text(
                                          'Buy 2 For \$4 ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Segoe UI',
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        '(Discount will be applied in bag)',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Segoe UI',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 28.0, 0.0, 0.0),
                                  child: Container(
                                    width: 355.0,
                                    height: 81.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 9.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Description',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 11.0, 0.0, 0.0),
                                            child: Text(
                                              'Air-popped popcorn tossed in delicious white cheddar cheese. It\'s okay to hug  this bag. No one will judge.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 17.0, 0.0, 17.0),
                                  child: Container(
                                    width: 352.0,
                                    height: 57.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Nutritional Info:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 11.0, 0.0, 0.0),
                                            child: Text(
                                              'Dietary: No Added Preservatives  ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Segoe UI',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'ADD TO BAG',
                                    icon: FaIcon(
                                      FontAwesomeIcons.cartArrowDown,
                                    ),
                                    options: FFButtonOptions(
                                      width: 355.0,
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Segoe UI',
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
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
                  wrapWithModel(
                    model: _model.customNavbarModel,
                    updateCallback: () => setState(() {}),
                    child: CustomNavbarWidget(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
