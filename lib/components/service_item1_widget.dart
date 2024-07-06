import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'service_item1_model.dart';
export 'service_item1_model.dart';

class ServiceItem1Widget extends StatefulWidget {
  const ServiceItem1Widget({
    super.key,
    required this.imgwidth,
    required this.imgheight,
    required this.imgpath,
    required this.itemName,
    required this.componentWidth,
    required this.componentHeight,
  });

  final double? imgwidth;
  final double? imgheight;
  final String? imgpath;
  final String? itemName;
  final double? componentWidth;
  final double? componentHeight;

  @override
  State<ServiceItem1Widget> createState() => _ServiceItem1WidgetState();
}

class _ServiceItem1WidgetState extends State<ServiceItem1Widget> {
  late ServiceItem1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServiceItem1Model());

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
      width: widget.componentWidth,
      height: widget.componentHeight,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network(
              widget.imgpath!,
              width: widget.imgwidth,
              height: widget.imgheight,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.itemName,
              'ServiceName',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Segoe UI',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
        ],
      ),
    );
  }
}
