import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_dialog_model.dart';
export 'schedule_dialog_model.dart';

class ScheduleDialogWidget extends StatefulWidget {
  const ScheduleDialogWidget({super.key});

  @override
  State<ScheduleDialogWidget> createState() => _ScheduleDialogWidgetState();
}

class _ScheduleDialogWidgetState extends State<ScheduleDialogWidget> {
  late ScheduleDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleDialogModel());

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
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 25.0, 20.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'SCHEDULE DELIVERY',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Segoe UI',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Text(
                      'Select Date',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Segoe UI',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    FlutterFlowChoiceChips(
                      options: [
                        ChipData('Today - Jun 10'),
                        ChipData('Tomorrow - Jun 11'),
                        ChipData('Thurs - Jun 13'),
                        ChipData('Fri - Jun 14')
                      ],
                      onChanged: (val) => setState(
                          () => _model.choiceChipsValue = val?.firstOrNull),
                      selectedChipStyle: ChipStyle(
                        backgroundColor:
                            FlutterFlowTheme.of(context).primaryText,
                        textStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Segoe UI',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        iconSize: 18.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).alternate,
                        textStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        iconSize: 18.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      chipSpacing: 12.0,
                      rowSpacing: 10.0,
                      multiselect: false,
                      alignment: WrapAlignment.start,
                      controller: _model.choiceChipsValueController ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      wrapped: true,
                    ),
                    Text(
                      'More Dates',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Segoe UI',
                            letterSpacing: 0.0,
                            decoration: TextDecoration.underline,
                            useGoogleFonts: false,
                          ),
                    ),
                    Divider(
                      thickness: 0.5,
                      color: Color(0xFF16283E),
                    ),
                    Text(
                      'Select Time',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Segoe UI',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0xFFEEEEEE),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue1 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFFEEEEEE),
                            ),
                            activeColor: Color(0xFF92DFAC),
                            checkColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '8:00 AM - 10:00 AM',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.sunny_snowing,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0xFFEEEEEE),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue2 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFFEEEEEE),
                            ),
                            activeColor: Color(0xFF92DFAC),
                            checkColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '10:00 AM - 12:00 PM',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.sunny_snowing,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0xFFEEEEEE),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue3 ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue3 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFFEEEEEE),
                            ),
                            activeColor: Color(0xFF92DFAC),
                            checkColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '12:00 PM - 2:00 PM',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.sunny,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0xFFEEEEEE),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue4 ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue4 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFFEEEEEE),
                            ),
                            activeColor: Color(0xFF92DFAC),
                            checkColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '2:00 PM - 4:00 PM',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.sunny,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                            unselectedWidgetColor: Color(0xFFEEEEEE),
                          ),
                          child: Checkbox(
                            value: _model.checkboxValue5 ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxValue5 = newValue!);
                            },
                            side: BorderSide(
                              width: 2,
                              color: Color(0xFFEEEEEE),
                            ),
                            activeColor: Color(0xFF92DFAC),
                            checkColor:
                                FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '4:00 PM - 6:00 PM',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Segoe UI',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.nights_stay_sharp,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                visualDensity: VisualDensity.compact,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFFEEEEEE),
                            ),
                            child: Checkbox(
                              value: _model.checkboxValue6 ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => _model.checkboxValue6 = newValue!);
                              },
                              side: BorderSide(
                                width: 2,
                                color: Color(0xFFEEEEEE),
                              ),
                              activeColor: Color(0xFF92DFAC),
                              checkColor:
                                  FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '6:00 PM - 8:00 PM',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.nights_stay_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Confirm',
            options: FFButtonOptions(
              width: double.infinity,
              height: 55.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Segoe UI',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
              elevation: 3.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
