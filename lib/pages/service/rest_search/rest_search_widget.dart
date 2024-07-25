import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'rest_search_model.dart';
export 'rest_search_model.dart';

class RestSearchWidget extends StatefulWidget {
  const RestSearchWidget({super.key});

  @override
  State<RestSearchWidget> createState() => _RestSearchWidgetState();
}

class _RestSearchWidgetState extends State<RestSearchWidget> {
  late RestSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RestSearchModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'RestSearch'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('REST_SEARCH_PAGE_Icon_19b385ky_ON_TAP');
            logFirebaseEvent('Icon_navigate_back');
            context.safePop();
          },
          child: Icon(
            Icons.chevron_left,
            color: FlutterFlowTheme.of(context).primary,
            size: 24.0,
          ),
        ),
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
          child: TextFormField(
            controller: _model.textController,
            focusNode: _model.textFieldFocusNode,
            autofocus: true,
            textCapitalization: TextCapitalization.characters,
            textInputAction: TextInputAction.search,
            obscureText: false,
            decoration: InputDecoration(
              isDense: true,
              labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Segoe UI',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              hintText: 'Search Service...',
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Segoe UI',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).error,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              filled: true,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
              suffixIcon: const Icon(
                Icons.search_rounded,
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Segoe UI',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
            textAlign: TextAlign.start,
            validator: _model.textControllerValidator.asValidator(context),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 30.0, 0.0),
            child: badges.Badge(
              badgeContent: Text(
                '1',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Segoe UI',
                      color: Colors.white,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              showBadge: true,
              shape: badges.BadgeShape.circle,
              badgeColor: FlutterFlowTheme.of(context).primary,
              elevation: 0.0,
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              position: badges.BadgePosition.topEnd(),
              animationType: badges.BadgeAnimationType.scale,
              toAnimate: true,
              child: Icon(
                Icons.shopping_cart_outlined,
                color: FlutterFlowTheme.of(context).primary,
                size: 30.0,
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 20.0, 0.0),
                    child: GridView(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        0.0,
                        0,
                        0.0,
                      ),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 0.7,
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE3C7A7),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFE3C7A7),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/coffee.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Coffee',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF1A7),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFFFF1A7),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/restaurant.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Restaurant',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'REST_SEARCH_PAGE_groceries_ON_TAP');
                            logFirebaseEvent('groceries_navigate_to');

                            context.pushNamed('Groceries');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFBDE4F2),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFBDE4F2),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/groceries.png',
                                      width: 31.0,
                                      height: 31.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Groceries',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFEDF9A6),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFEDF9A6),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/shopping.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Shopping',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE9DCF3),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFE9DCF3),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/offers.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Offers',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFDDD39F),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFDDD39F),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/restaurant_award.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Restaurant Awards',
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFECC29C),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFECC29C),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/supermarket.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Supermarket',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCEDC8),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFFCEDC8),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/egg.png',
                                    width: 31.0,
                                    height: 31.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Breakfast',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'REST_SEARCH_PAGE_medicalsupplies_ON_TAP');
                            logFirebaseEvent('medicalsupplies_navigate_to');

                            context.pushNamed('MedicalSupplies');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFB4E8E5),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFB4E8E5),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/drugs.png',
                                      width: 31.0,
                                      height: 31.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Medical Supplies',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('REST_SEARCH_PAGE_food_ON_TAP');
                            logFirebaseEvent('food_navigate_to');

                            context.pushNamed('FoodBeverages');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFCDDD9F),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFCDDD9F),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/food.png',
                                      width: 31.0,
                                      height: 31.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Food & Beverages',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('REST_SEARCH_PAGE_flowers_ON_TAP');
                            logFirebaseEvent('flowers_navigate_to');

                            context.pushNamed('FlowersGifts');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFDD3FE),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFFDD3FE),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/flowers.png',
                                      width: 31.0,
                                      height: 31.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Flowers and Gifts',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('REST_SEARCH_PAGE_pet_ON_TAP');
                            logFirebaseEvent('pet_navigate_to');

                            context.pushNamed('PetSupplies');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1E5B9),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFF1E5B9),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/pet.png',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Text(
                                'Pet \nSupplies',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'REST_SEARCH_PAGE_electronic_ON_TAP');
                            logFirebaseEvent('electronic_navigate_to');

                            context.pushNamed('Electronic');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDCD3E2),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFDCD3E2),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/electronics.png',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Text(
                                'Electronics',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3CEAC),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFF3CEAC),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/courier.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Text(
                              'Courier Services',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD8C2AD),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFD8C2AD),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/tools.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Text(
                              'Construction Services',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'REST_SEARCH_PAGE_personalcare_ON_TAP');
                            logFirebaseEvent('personalcare_navigate_to');

                            context.pushNamed('PersonalCareItems');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDBC3EE),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFDBC3EE),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/personal_care.png',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Text(
                                'Personal Care Items',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'REST_SEARCH_PAGE_hardware_ON_TAP');
                            logFirebaseEvent('hardware_navigate_to');

                            context.pushNamed('Hardware');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC9DEEB),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFC9DEEB),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/hardware.png',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Text(
                                'Hardware',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFC1C1C1),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFC1C1C1),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/courier.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Text(
                              'Emergency Security',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD4CAB5),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFD4CAB5),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/eco.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Text(
                              'Eco-Friendly Delivery',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent('REST_SEARCH_PAGE_office_ON_TAP');
                            logFirebaseEvent('office_navigate_to');

                            context.pushNamed('OfficeSupplies');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDCECF3),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFDCECF3),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/office.png',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Text(
                                'Office Supplies',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'REST_SEARCH_PAGE_household_ON_TAP');
                            logFirebaseEvent('household_navigate_to');

                            context.pushNamed('HouseholdSupplies');
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 70.0,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFCAD7A6),
                                  borderRadius: BorderRadius.circular(100.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFCAD7A6),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/household.png',
                                    width: 28.0,
                                    height: 28.0,
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                              Text(
                                'Household Supplies',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Segoe UI',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD2C2B3),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFD2C2B3),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/clothes.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Text(
                              'Clothing and Accessories',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFB4D6FA),
                                borderRadius: BorderRadius.circular(100.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: const Color(0xFFB4D6FA),
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/subscription.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.none,
                                ),
                              ),
                            ),
                            Text(
                              'Subscription',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'CONTINUE TO CHECK OUT',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 93.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Segoe UI',
                                color: Colors.white,
                                fontSize: 15.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
