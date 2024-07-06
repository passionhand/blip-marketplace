import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delivery_bottomsheet_model.dart';
export 'delivery_bottomsheet_model.dart';

class DeliveryBottomsheetWidget extends StatefulWidget {
  const DeliveryBottomsheetWidget({super.key});

  @override
  State<DeliveryBottomsheetWidget> createState() =>
      _DeliveryBottomsheetWidgetState();
}

class _DeliveryBottomsheetWidgetState extends State<DeliveryBottomsheetWidget> {
  late DeliveryBottomsheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeliveryBottomsheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 15.0, 20.0, 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140.0,
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: BorderRadius.circular(500.0),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Color(0xFF16283E),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Segoe UI',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '4517 Washington Ave. Manchester, Kentucky 39495',
                            style: FlutterFlowTheme.of(context)
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Text(
                      'Contact Number',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Segoe UI',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '0823 255 4356',
                            style: FlutterFlowTheme.of(context)
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
                  Divider(
                    thickness: 0.6,
                    color: Color(0xFF16283E),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rate Delivery',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Segoe UI',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: Text(
                        '${valueOrDefault<String>(
                          _model.ratingBarValue?.toString(),
                          '0',
                        )}/5',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Segoe UI',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    RatingBar.builder(
                      onRatingUpdate: (newValue) =>
                          setState(() => _model.ratingBarValue = newValue),
                      itemBuilder: (context, index) => Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFFC700),
                      ),
                      direction: Axis.horizontal,
                      initialRating: _model.ratingBarValue ??= 3.0,
                      unratedColor: Color(0xFFE6E6E6),
                      itemCount: 5,
                      itemSize: 10.0,
                      glowColor: Color(0xFFFFC700),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Time',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Segoe UI',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'PM12:25',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Segoe UI',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
