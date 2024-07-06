import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'read_me_page_model.dart';
export 'read_me_page_model.dart';

class ReadMePageWidget extends StatefulWidget {
  const ReadMePageWidget({super.key});

  @override
  State<ReadMePageWidget> createState() => _ReadMePageWidgetState();
}

class _ReadMePageWidgetState extends State<ReadMePageWidget> {
  late ReadMePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReadMePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ReadMePage'});
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
        title: 'ReadMePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Terms and Conditions',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Segoe UI',
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 36.0, 20.0, 50.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Html(
                              data:
                                  '<b>1.Introduction</b>\n<p>Welcome to Blip Delivery Inc. (\"Blip\"). By using our services, you agree to comply with and be bound by the following terms and conditions. Please review them carefully.</p><br><br>\n<b>2. Emergency Situations</b>\n<ul><li>Life-Threatening Emergencies: In the event of a life-threatening emergency, please call 911 immediately. Our security drones provide surveillance and monitoring but are not a substitute for emergency services.</li></ul><br><br>\n<b>3. Security Services</b>\n<ul><li>Unlimited Deployments: Our subscription plan includes unlimited drone deployments, available only in select locations. Please verify your eligibility by checking the list of supported zip codes.</li>\n<li>Service Availability: Service availability is subject to operational capabilities, weather conditions, and regulatory compliance. Blip reserves the right to modify, suspend, or discontinue services without prior notice.</li></ul><br><br>\n<b>4. Marketplace Services</b>\n<ul><li>Product Listings: Vendors can list products for sale on the Blip marketplace. Blip does not guarantee the accuracy of listings or the quality of products.</li>\n<li>Order Placement: Consumers can purchase products directly from our marketplace. All orders are subject to availability and confirmation.</li>\n<li>Delivery: Blip offers on-demand drone delivery. Delivery times may vary based on location, weather conditions, and operational constraints.</li>\n<li>Returns and Refunds: Our return and refund policy is detailed separately. Please review it before making a purchase.</li></ul><br><br>\n<b>5. User Responsibilities</b>\n<ul><li>Compliance: Users must comply with all local, state, and federal regulations when using Blip services. Misuse of drones or other services can result in suspension or termination of your account.</li>\n<li>Proper Use: Security drones should be used solely for surveillance and monitoring as intended. Any unauthorized use is prohibited.</li>\n<li>Account Security: Users are responsible for maintaining the confidentiality of their account information and for all activities that occur under their account.</li></ul><br><br>\n<b>6. Subscription Terms</b>\n<ul><li>Monthly Fee: The security service subscription fee is \$250 per month, billed on a recurring basis. Subscribers can cancel their subscription at any time, but no refunds will be provided for partial months.</li>\n<li>Billing and Payment: Payment for services is due in advance. Failure to pay may result in suspension or termination of services.</li></ul><br><br>\n<b>7. Data Privacy</b>\n<ul><li>Data Collection: By using Blip services, you consent to the collection, use, and sharing of surveillance data as described in our Privacy Policy.</li>\n<li>Data Security: Blip takes reasonable measures to protect your data but cannot guarantee absolute security.</li></ul><br><br>\n<b>8. Limitations of Liability</b>\n<ul><li>Service Interruptions: Blip is not liable for any interruptions in service, including those due to maintenance, upgrades, or external factors beyond our control.</li>\n<li>Indirect Damages: Blip is not responsible for any indirect, incidental, or consequential damages arising from the use of our services.</li></ul><br><br>\n<b>9. Termination</b>\n<ul><li>Termination by User: Users may terminate their account at any time. Termination does not entitle the user to a refund for any prepaid services.</li>\n<li>Termination by Blip: Blip reserves the right to terminate or suspend services without notice if the user violates these terms and conditions.</li></ul><br><br>\n<b>10. Governing Law</b>\n<ul><li>Jurisdiction: These terms and conditions are governed by and construed in accordance with the laws of the state in which Blip operates, without regard to its conflict of law principles.</li>\n<li>Dispute Resolution: Any disputes arising from these terms will be resolved through binding arbitration in the state where Blip is headquartered.</li></ul><br><br>\n<b>11. Changes to Terms and Conditions</b>\n<ul><li>Modifications: Blip reserves the right to modify these terms and conditions at any time. Changes will be effective immediately upon posting on our website or app.</li>\n<li>Notification: Users will be notified of significant changes to these terms through email or app notifications.</li></ul><br><br>\n<b>12. Contact Information</b>\n<ul><li>Support: For any questions or concerns about these terms and conditions, please contact our customer support team at support@blipdelivery.com.</li></ul>',
                              onLinkTap: (url, _, __) => launchURL(url!),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 32.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'I ACCEPT',
                                options: FFButtonOptions(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 20.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Segoe UI',
                                        color: Colors.white,
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
                                  borderRadius: BorderRadius.circular(8.0),
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
          ),
        ));
  }
}
