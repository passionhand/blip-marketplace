import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package_item_model.dart';
export 'package_item_model.dart';

class PackageItemWidget extends StatefulWidget {
  const PackageItemWidget({
    super.key,
    required this.imgwidth,
    required this.imgheight,
    required this.itemname,
    required this.backgroundcolor,
    required this.imagePath,
    required this.textcolor,
  });

  final double? imgwidth;
  final double? imgheight;
  final String? itemname;
  final Color? backgroundcolor;
  final String? imagePath;
  final Color? textcolor;

  @override
  State<PackageItemWidget> createState() => _PackageItemWidgetState();
}

class _PackageItemWidgetState extends State<PackageItemWidget> {
  late PackageItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PackageItemModel());

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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 77.0,
        height: 77.0,
        decoration: BoxDecoration(
          color: widget.backgroundcolor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: const Color(0xFFDFDFDF),
            width: 1.0,
          ),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.network(
                  widget.imagePath!,
                  width: widget.imgwidth,
                  height: widget.imgheight,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.itemname,
                  'packageName',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Segoe UI',
                      color: widget.textcolor,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
