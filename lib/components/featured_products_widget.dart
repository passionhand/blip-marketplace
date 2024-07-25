import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'featured_products_model.dart';
export 'featured_products_model.dart';

class FeaturedProductsWidget extends StatefulWidget {
  const FeaturedProductsWidget({
    super.key,
    required this.imgUrl,
    required this.name,
    required this.description,
    required this.prize,
    bool? soldOut,
  }) : soldOut = soldOut ?? false;

  final String? imgUrl;
  final String? name;
  final String? description;
  final int? prize;
  final bool soldOut;

  @override
  State<FeaturedProductsWidget> createState() => _FeaturedProductsWidgetState();
}

class _FeaturedProductsWidgetState extends State<FeaturedProductsWidget>
    with TickerProviderStateMixin {
  late FeaturedProductsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeaturedProductsModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: double.infinity,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              width: 140.0,
              height: 140.0,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      widget.imgUrl!,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  if (valueOrDefault<bool>(
                    widget.soldOut,
                    true,
                  ))
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 85.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Sold Out',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  if (!widget.soldOut)
                    Align(
                      alignment: const AlignmentDirectional(0.99, 1.1),
                      child: Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 19.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 30.0,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.name,
                          'productName',
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Segoe UI',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.description,
                          'productDescription',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Segoe UI',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            '\$${valueOrDefault<String>(
                              widget.prize?.toString(),
                              '0',
                            )}',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 23.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'In Stock',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
    );
  }
}
