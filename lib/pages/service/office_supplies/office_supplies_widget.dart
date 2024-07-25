import '/components/custom_navbar_widget.dart';
import '/components/featured_product_widget.dart';
import '/components/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'office_supplies_model.dart';
export 'office_supplies_model.dart';

class OfficeSuppliesWidget extends StatefulWidget {
  const OfficeSuppliesWidget({super.key});

  @override
  State<OfficeSuppliesWidget> createState() => _OfficeSuppliesWidgetState();
}

class _OfficeSuppliesWidgetState extends State<OfficeSuppliesWidget> {
  late OfficeSuppliesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OfficeSuppliesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'OfficeSupplies'});
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
              logFirebaseEvent('OFFICE_SUPPLIES_chevron_left_ICN_ON_TAP');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Office Supplies',
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 20.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  13.0, 0.0, 37.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel1,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 31.0,
                                  imgheight: 38.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/h5zd8iplc807/paper.png',
                                  itemName: 'Paper',
                                  componentWidth: 41.0,
                                  componentHeight: 66.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 37.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel2,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 40.0,
                                  imgheight: 22.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/xa8dexlspkhv/staples.png',
                                  itemName: 'Staples',
                                  componentWidth: 43.0,
                                  componentHeight: 50.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 37.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel3,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 36.0,
                                  imgheight: 38.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/e8v9xn3rw6mt/Pens.png',
                                  itemName: 'Pens',
                                  componentWidth: 41.0,
                                  componentHeight: 66.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 37.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel4,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 31.0,
                                  imgheight: 38.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/o6k9da5jlu7e/Printer_Ink.png',
                                  itemName: 'Printer Ink',
                                  componentWidth: 57.0,
                                  componentHeight: 66.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 37.0, 0.0),
                              child: wrapWithModel(
                                model: _model.menuItemModel5,
                                updateCallback: () => setState(() {}),
                                child: const MenuItemWidget(
                                  imgwidth: 38.0,
                                  imgheight: 38.0,
                                  imgpath:
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pp5gk6qjxswu/Tape.png',
                                  itemName: 'Tape',
                                  componentWidth: 37.0,
                                  componentHeight: 66.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 393.0,
                      height: 630.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/h9f1lij0pw2v/Notebooks.png',
                                          name: 'Notebooks',
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/j63tr1grzgx5/Desks_and_Chairs.png',
                                          name: 'Desks and Chairs',
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/5tu2to4x7v6t/Printers.png',
                                          name: 'Printers',
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/54rbftf853l1/Printer_Ink.png',
                                          name: 'Printer Ink',
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ephhv6rkwlht/Binder.png',
                                          name: 'Binder',
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
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/4apd44vfltdq/Pen.png',
                                          name: 'Pen',
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
