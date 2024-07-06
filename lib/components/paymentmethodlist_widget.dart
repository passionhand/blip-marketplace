import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'paymentmethodlist_model.dart';
export 'paymentmethodlist_model.dart';

class PaymentmethodlistWidget extends StatefulWidget {
  const PaymentmethodlistWidget({
    super.key,
    required this.paymentMethod,
  });

  final String? paymentMethod;

  @override
  State<PaymentmethodlistWidget> createState() =>
      _PaymentmethodlistWidgetState();
}

class _PaymentmethodlistWidgetState extends State<PaymentmethodlistWidget> {
  late PaymentmethodlistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentmethodlistModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: SvgPicture.network(
              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blip-25vawb/assets/ie6uf6z22q1z/visa.svg',
              width: 43.0,
              height: 14.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
            child: Text(
              '2141434**********',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Segoe UI',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
