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
import 'product_selections_model.dart';
export 'product_selections_model.dart';

class ProductSelectionsWidget extends StatefulWidget {
  const ProductSelectionsWidget({super.key});

  @override
  State<ProductSelectionsWidget> createState() =>
      _ProductSelectionsWidgetState();
}

class _ProductSelectionsWidgetState extends State<ProductSelectionsWidget>
    with TickerProviderStateMixin {
  late ProductSelectionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductSelectionsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ProductSelections'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
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
              logFirebaseEvent('PRODUCT_SELECTIONS_chevron_left_ICN_ON_T');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: wrapWithModel(
            model: _model.searchModel,
            updateCallback: () => setState(() {}),
            child: const SearchWidget(),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            alignment: const AlignmentDirectional(0.0, 1.0),
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
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
                              unselectedLabelStyle: const TextStyle(),
                              labelColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              unselectedLabelColor: const Color(0xFF252525),
                              backgroundColor: const Color(0xFF252525),
                              unselectedBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              unselectedBorderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 0.0,
                              borderRadius: 25.0,
                              elevation: 0.0,
                              labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              tabs: const [
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
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 86.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    21.0, 10.0, 0.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 15.0, 3.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController1 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: const ['Option 1'],
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
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText: 'Filter',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(13.0, 4.0,
                                                                9.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 18.0, 3.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController2 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: const ['Option 1'],
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
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText: 'Price Range',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(13.0, 4.0,
                                                                9.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 15.0, 3.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController3 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: const ['Option 1'],
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
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText: 'Rating',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(13.0, 4.0,
                                                                9.0, 4.0),
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
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .featuredProductModel1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
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
                                                        const FeaturedProductWidget(
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
                                                        const FeaturedProductWidget(
                                                      imgUrl:
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2y9k1yda87qp/HerbaVit.png',
                                                      name: 'HerbaVomit',
                                                      description:
                                                          'Lorem ipsum dolor sit amet',
                                                      prize: 30,
                                                      soldOut: false,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 12.0, 0.0, 0.0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .featuredProductModel4,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
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
                                                        const FeaturedProductWidget(
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
                                                        const FeaturedProductWidget(
                                                      imgUrl:
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/nsqwu1eydimz/Ginggo.png',
                                                      name: 'HerbaVomit',
                                                      description:
                                                          'Lorem ipsum dolor sit amet',
                                                      prize: 30,
                                                      soldOut: false,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 27.0, 20.0, 23.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'CONTINUE TO CHECKOUT',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 60.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                KeepAliveWidgetWrapper(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 86.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 7.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/Smartfood_White_Cheddar_Popcorn_2oz.png',
                                                width: double.infinity,
                                                height: 261.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      25.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                'Smartfood White Cheddar Popcorn 2oz',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      25.0, 20.0, 0.0, 14.0),
                                              child: Text(
                                                '\$2.79 (\$1.39/oz)  ',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 355.0,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFCACACA),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    'Buy 2 For \$4 ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  '(Discount will be applied in bag)',
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 28.0, 0.0, 0.0),
                                            child: Container(
                                              width: 355.0,
                                              height: 81.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 9.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Text(
                                                        'Description',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Segoe UI',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  11.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Air-popped popcorn tossed in delicious white cheddar cheese. It\'s okay to hug  this bag. No one will judge.',
                                                        style:
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
                                                      ),
                                                    ),
                                                  ],
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
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 17.0, 0.0, 17.0),
                                            child: Container(
                                              width: 352.0,
                                              height: 57.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Text(
                                                      'Nutritional Info:',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Segoe UI',
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  11.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Dietary: No Added Preservatives  ',
                                                        style:
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
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'ADD TO BAG',
                                              icon: const FaIcon(
                                                FontAwesomeIcons.cartArrowDown,
                                              ),
                                              options: FFButtonOptions(
                                                width: 355.0,
                                                height: 60.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                KeepAliveWidgetWrapper(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 86.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    21.0, 10.0, 0.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 15.0, 3.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController4 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: const ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownValue4 =
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
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText: 'Filter',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(13.0, 4.0,
                                                                9.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 18.0, 3.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController5 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: const ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownValue5 =
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
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText: 'Price Range',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(13.0, 4.0,
                                                                9.0, 4.0),
                                                    hidesUnderline: true,
                                                    isOverButton: true,
                                                    isSearchable: true,
                                                    isMultiSelect: false,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 15.0, 3.0),
                                                  child: FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController6 ??=
                                                        FormFieldController<
                                                            String>(null),
                                                    options: const ['Option 1'],
                                                    onChanged: (val) =>
                                                        setState(() => _model
                                                                .dropDownValue6 =
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
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Segoe UI',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText: 'Rating',
                                                    searchHintText:
                                                        'Search for an item...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(13.0, 4.0,
                                                                9.0, 4.0),
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
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Flexible(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .featuredProductModel7,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          const FeaturedProductWidget(
                                                        imgUrl:
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/3h2m8h83x8vm/Herbakof.png',
                                                        name: 'Herbakof',
                                                        description:
                                                            'Lorem ipsum dolor sit amet',
                                                        prize: 30,
                                                        soldOut: false,
                                                      ),
                                                    ),
                                                  ),
                                                  wrapWithModel(
                                                    model: _model
                                                        .featuredProductModel8,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
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
                                                        .featuredProductModel9,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
                                                      imgUrl:
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2y9k1yda87qp/HerbaVit.png',
                                                      name: 'HerbaVomit',
                                                      description:
                                                          'Lorem ipsum dolor sit amet',
                                                      prize: 30,
                                                      soldOut: false,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 12.0, 0.0, 0.0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  wrapWithModel(
                                                    model: _model
                                                        .featuredProductModel10,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
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
                                                        .featuredProductModel11,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
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
                                                        .featuredProductModel12,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        const FeaturedProductWidget(
                                                      imgUrl:
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/nsqwu1eydimz/Ginggo.png',
                                                      name: 'HerbaVomit',
                                                      description:
                                                          'Lorem ipsum dolor sit amet',
                                                      prize: 30,
                                                      soldOut: false,
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 27.0, 20.0, 23.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'CONTINUE TO CHECKOUT',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 60.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
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
                              ],
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
                child: const CustomNavbarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
