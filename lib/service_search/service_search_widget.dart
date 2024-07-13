import '/components/service_item_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'service_search_model.dart';
export 'service_search_model.dart';

class ServiceSearchWidget extends StatefulWidget {
  const ServiceSearchWidget({super.key});

  @override
  State<ServiceSearchWidget> createState() => _ServiceSearchWidgetState();
}

class _ServiceSearchWidgetState extends State<ServiceSearchWidget> {
  late ServiceSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceSearchModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ServiceSearch'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        title: 'ServiceSearch',
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
                  logFirebaseEvent('SERVICE_SEARCH_chevron_left_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                'Search Products and Services',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Segoe UI',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 20.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: const ['Option 1'],
                          onChanged: (val) =>
                              setState(() => _model.dropDownValue = val),
                          width: 120.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Segoe UI',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          hintText: 'Filter',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor: const Color(0xFFF5F5F5),
                          elevation: 2.0,
                          borderColor: Colors.transparent,
                          borderWidth: 2.0,
                          borderRadius: 50.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Search Services',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                filled: true,
                                fillColor: const Color(0xFFF5F5F5),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                suffixIcon: const Icon(
                                  Icons.search_outlined,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel2,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/lyquxc1q1nwh/service2.svg',
                                service: 'Food &\nBeverages',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel3,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/vfzeyf3tj3t6/service3.svg',
                                service: 'Flowers and\nGifts',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel4,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/2fgc3gdh8yhv/service4.svg',
                                service: 'Pet Supplies',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel5,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pf8gcxslnimv/service5.svg',
                                service: 'Electronics',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel6,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/slaux4318dgn/service6.svg',
                                service: 'Groceries',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.0,
                          ),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            wrapWithModel(
                              model: _model.serviceItemModel7,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/o47uhjdhpx83/service1.svg',
                                service: 'Service1',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel8,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/pf8gcxslnimv/service5.svg',
                                service: 'Service2',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.serviceItemModel9,
                              updateCallback: () => setState(() {}),
                              child: ServiceItemWidget(
                                image:
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/slaux4318dgn/service6.svg',
                                service: 'Service3',
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
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
        ));
  }
}
