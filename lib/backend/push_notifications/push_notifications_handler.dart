import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'HomePage': ParameterData.none(),
  'Splash1': ParameterData.none(),
  'Splash2': ParameterData.none(),
  'Splash3': ParameterData.none(),
  'signup': ParameterData.none(),
  'login': ParameterData.none(),
  'HomePageExp': ParameterData.none(),
  'ProductSearch': ParameterData.none(),
  'ServiceSearch': ParameterData.none(),
  'RestSearch': ParameterData.none(),
  'SearchResult': ParameterData.none(),
  'OrderScreen': ParameterData.none(),
  'ProfilePage': ParameterData.none(),
  'ReadMePage': ParameterData.none(),
  'SupportPage': ParameterData.none(),
  'SupportTicket': ParameterData.none(),
  'Settings': ParameterData.none(),
  'Electronic': ParameterData.none(),
  'Groceries': ParameterData.none(),
  'PersonalCareItems': ParameterData.none(),
  'Hardware': ParameterData.none(),
  'OfficeSupplies': ParameterData.none(),
  'HouseholdSupplies': ParameterData.none(),
  'FoodBeverages': ParameterData.none(),
  'FlowersGifts': ParameterData.none(),
  'PetSupplies': ParameterData.none(),
  'MedicalSupplies': ParameterData.none(),
  'ProductSelections': ParameterData.none(),
  'ProductSelection': ParameterData.none(),
  'ConstructionServices': ParameterData.none(),
  'CourierServices': ParameterData.none(),
  'popupkeyboard': ParameterData.none(),
  'pickuplocation': ParameterData.none(),
  'dropofflocation': ParameterData.none(),
  'confirmation': ParameterData.none(),
  'securityservice': ParameterData.none(),
  'Constructionconfirmationpage': ParameterData.none(),
  'SecurityService1': ParameterData.none(),
  'DeploymentRequest': ParameterData.none(),
  'Notification': ParameterData.none(),
  'Payment': ParameterData.none(),
  'googlepay': ParameterData.none(),
  'droneDeploy': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
