import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TermsAndConditions'});
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
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
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
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
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
                        const EdgeInsetsDirectional.fromSTEB(20.0, 36.0, 20.0, 50.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const FlutterFlowWebView(
                          content:
                              '<h3 style=\"text-align:center;\"> Blip Delivery Inc. \n</h3>\n\n<h4 style=\"text-align:center;\">Terms and Conditions\n</h4>\n                                 \n <b>1.Introduction</b><ul>Welcome to Blip Delivery Inc. (\"we,\" \"us,\" or \"our\"). These Terms and Conditions (\"Terms\") govern your use of our services, including our website, mobile application, and any related services (collectively, the \"Services\"). By accessing or using our Services, you agree to comply with and be bound by these Terms.</ul>\n\n<b>2. Services</b>\n<ul>Blip Delivery Inc. provides on-demand drone delivery services to vendors and consumers. Our Services include, but are not limited to, delivery of goods, infrared imaging, and bird’s-eye view surveillance. We reserve the right to modify or discontinue any aspect of our Services at any time.</ul>\n\n<b>3. Eligibility</b>\n<ul>You must be at least 18 years old to use our Services. By using our Services, you represent and warrant that you meet this age requirement.\n</ul>\n\n<b>4. User Accounts</b>\n<ul>4.1 Account Registration: To access certain features of our Services, you may be required to create an account. You agree to provide accurate and complete information during the registration process and to update such information to keep it accurate and complete.\n</ul>\n<ul>4.2 Account Security: You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You agree to notify us immediately of any unauthorized use of your account.\n</ul>\n\n<b>5. Service Use</b>\n<ul>5.1 Permitted Use: You agree to use our Services only for lawful purposes and in accordance with these Terms. You agree not to use our Services in any manner that could damage, disable, overburden, or impair our servers or networks.</ul>\n\n<ul>5.2 Prohibited Use: You agree:</ul>\n<ul>\n<ul>\n<li>Use our Services for any illegal or unauthorized purpose;</li>\n<li>Interfere with or disrupt the integrity or performance of our Services;</li>\n<li>Attempt to gain unauthorized access to our Services or related systems or networks;</li>\n<li>Tamper with, alter, or otherwise interfere with our drones, including but not limited to the winch mechanism.</li>\n</ul> \n</ul>\n\n<b>6. Payment Terms</b>\n<ul>6.1 Fees: You agree to pay all fees and charges associated with your use of our Services in accordance with the pricing and payment terms presented to you for that service.\n</ul>\n<ul>6.2 Payment Methods: We accept various payment methods, which will be presented to you during the payment process. You agree to provide accurate and complete payment information.\n</ul>\n<ul>6.3 Refunds: Our refund policy is detailed in the Refund Policy section of our website. Please review this policy carefully.\n</ul>\n\n<b>7. Vendor Agreements</b>\n<ul>If you are a vendor using our Services to deliver goods to consumers, you agree to comply with the terms set forth in our Vendor Agreement, which is incorporated by reference into these Terms.</ul>\n\n<b>8. Delivery Terms</b>\n<ul>8.1 Delivery Process: We will make every effort to ensure timely delivery of goods. However, delivery times may vary based on factors beyond our control.</ul>\n<ul>8.2 Delivery Confirmation: You will receive a confirmation notification upon successful delivery of goods.\n</ul>\n<ul>8.3 Delivery Issues: If you encounter any issues with your delivery, please contact our customer support immediately.\n</ul>\n\n\n<b>9. Privacy Policy</b>\n<ul>We are committed to protecting your privacy. Our Privacy Policy, which describes our data collection, use, and disclosure practices, is incorporated into these Terms by reference. Please review our Privacy Policy carefully.\n</ul>\n\n<b>10. Intellectual Property</b>\n<ul>10.1 Ownership: We retain all right, title, and interest in and to our Services and all related intellectual property rights.\n</ul>\n<ul>10.2 License: We grant you a limited, non-exclusive, non-transferable license to access and use our Services for your personal, non-commercial use.\n</ul>\n\n<b>11. Dispute Resolution\n</b>\n<ul>11.1 Informal Resolution: We encourage you to contact us first to resolve any disputes. You can reach our customer support team through the contact information provided on our website.\n</ul>\n<ul>11.2 Arbitration: Any disputes arising out of or relating to these Terms or our Services will be resolved through binding arbitration in accordance with the rules of the American Arbitration Association.\n</ul>\n\n<b>12. Limitation of Liability</b>\n<ul>To the maximum extent permitted by law, Blip Delivery Inc. will not be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, whether incurred directly or indirectly, or any loss of data, use, goodwill, or other intangible losses, resulting from (i) your use or inability to use our Services; (ii) any unauthorized access to or use of our servers and/or any personal information stored therein; and (iii) any other matter related to our Services.</ul>\n\n<b>13. Indemnification</b>\n<ul>You agree to indemnify, defend, and hold harmless Blip Delivery Inc. and our affiliates, officers, directors, employees, and agents from and against any and all claims, damages, losses, liabilities, costs, and expenses (including reasonable attorneys\' fees) arising out of or related to (i) your use of our Services; (ii) your violation of these Terms; or (iii) your violation of any rights of another party.\n</ul>\n\n<b>14. Modifications to Terms</b>\n<ul>We reserve the right to modify these Terms at any time. We will notify you of any changes by posting the updated Terms on our website. Your continued use of our Services after such modifications will constitute your acknowledgment of the modified Terms and your agreement to abide by them.\n</ul>\n\n<b>15. Termination</b>\n<ul>We may terminate or suspend your account and access to our Services at any time, without prior notice or liability, for any reason, including if you breach these Terms.\n</ul>\n\n<b>16. Governing Law</b>\n<ul>These Terms and your use of our Services will be governed by and construed in accordance with the laws of the State of California, without regard to its conflict of law principles.\n</ul>\n\n<b>17. Contact Information</b>\n<ul>If you have any questions about these Terms, please contact us at:</br>\nBlip Delivery Inc.</br>\n4136 Del Rey Avenue, Marina Del Rey, CA 90292</br>\nhelp@blip.delivery\n</ul>\n\n<b>18. Miscellaneous</b>\n<ul>18.1 Entire Agreement: These Terms constitute the entire agreement between you and Blip Delivery Inc. regarding the use of our Services and supersede any prior agreements between you and Blip Delivery Inc.</ul>\n<ul>18.2 Waiver: Our failure to enforce any right or provision of these Terms will not be considered a waiver of those rights.</ul>\n<ul>18.3 Severability: If any provision of these Terms is held to be invalid or unenforceable, the remaining provisions of these Terms will remain in effect.\n</ul>\n\n\n<b>19. Special Provisions for California Residents</b>\n<ul>If you are a California resident, you have the right to request information about the categories of personal information we collect, the purposes for which we use this information, and the categories of third parties with whom we share this information.</ul>\n\n<b>20. Emergency Services Disclaimer</b>\n<ul>Blip Delivery Inc. does not provide emergency services. In case of a life-threatening emergency, please call 911 immediately. Blip Delivery Inc. only provides drone deployment services for non-emergency situations.</ul>\n\n<b>21. Additional Services</b>\n<ul>21.1 Infrared Imaging: Our infrared imaging services are intended for general informational purposes and should not be used for any critical decision-making.\n</ul>\n<ul>21.2 Bird\'s-Eye View Surveillance: Our bird’s-eye view surveillance services are subject to local regulations and restrictions. Users are responsible for ensuring compliance with all applicable laws.\n</ul>\n\n\n<b>22. Subscription Services</b>\n<ul>22.1 Subscription Plans: We offer various subscription plans for our Services. Details of these plans, including pricing and features, are available on our website.\n</ul>\n<ul>22.2 Cancellation Policy: You may cancel your subscription at any time through your account settings. Refunds will be processed in accordance with our Refund Policy.\n</ul>\n\n\n<b>23. Promotions and Offers\n</b>\n<ul>From time to time, we may offer promotions, discounts, or other incentives. These offers are subject to specific terms and conditions, which will be provided at the time of the offer.\n</ul>\n\n<b>24. Customer Support</b>\n<ul>For any questions or issues regarding our Services, please contact our customer support team at help@blip.delivery.</ul>\n\n\n<b>25. Prohibited Actions</b>\n<ul>25.1 Tampering with Drones: Users are strictly prohibited from tampering with, altering, or otherwise interfering with our drones. This includes, but is not limited to, the winch mechanism used for delivering goods.\n</ul>\n<ul>25.2 Winch Handling: Users must never pull on the winch. Any attempt to manually manipulate the winch may result in damage to the equipment and potential injury. Any such actions will be considered a breach of these Terms and may result in the suspension or termination of your account.\n</ul>\n\n\n<b>26. Compliance with Local Laws</b>\n<ul>Users are responsible for ensuring that their use of our Services complies with all applicable local, state, and federal laws and regulations.</ul>\n\n<b>27. Service Modifications</b>\n<ul>We reserve the right to modify, suspend, or discontinue any aspect of our Services at any time, with or without notice. We will not be liable to you or any third party for any modification, suspension, or discontinuation of our Services.</ul>\n\n<b>28. User Responsibilities</b>\n<ul>Users are responsible for maintaining the confidentiality of their account information and for all activities that occur under their account. Users agree to notify us immediately of any unauthorized use of their account or any other breach of security.\n</ul>\n\n<b>29. Data Security</b>\n<ul>We implement reasonable security measures to protect your personal information. However, we cannot guarantee the absolute security of your data. You acknowledge and agree that you provide your personal information at your own risk.\n</ul>\n\n<b>30. Feedback and Suggestions</b>\n<ul>We welcome your feedback and suggestions regarding our Services. By submitting feedback or suggestions, you agree that we may use them without any restriction or compensation to you.\n</ul>',
                          height: 6300.0,
                          verticalScroll: false,
                          horizontalScroll: false,
                          html: true,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 32.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'TERMS_AND_CONDITIONS_I_ACCEPT_BTN_ON_TAP');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed(
                                'HomePage',
                                queryParameters: {
                                  'showbottomsheet': serializeParam(
                                    true,
                                    ParamType.bool,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );

                              logFirebaseEvent('Button_update_app_state');
                              FFAppState().firstLogin = false;
                              FFAppState().update(() {});
                            },
                            text: 'I ACCEPT',
                            options: FFButtonOptions(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 20.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
                              borderSide: const BorderSide(
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
    );
  }
}
