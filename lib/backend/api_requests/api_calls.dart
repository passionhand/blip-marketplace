import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAPI definition Group Code

class OpenAPIDefinitionGroup {
  static String getBaseUrl() => 'http://api.blip-delivery.com/v1';
  static Map<String, String> headers = {};
  static VerifyPhoneNumberWithCodeCall verifyPhoneNumberWithCodeCall =
      VerifyPhoneNumberWithCodeCall();
  static SignUpCall signUpCall = SignUpCall();
  static SignInCall signInCall = SignInCall();
  static CreateSetupIntentCall createSetupIntentCall = CreateSetupIntentCall();
  static CreatePaymentIntentCall createPaymentIntentCall =
      CreatePaymentIntentCall();
  static CreateUpdateCall createUpdateCall = CreateUpdateCall();
  static CreateUpdate1Call createUpdate1Call = CreateUpdate1Call();
  static RequestPhoneNumberVerificationCall requestPhoneNumberVerificationCall =
      RequestPhoneNumberVerificationCall();
  static AddPaymentMethodCall addPaymentMethodCall = AddPaymentMethodCall();
  static AuthenticateCall authenticateCall = AuthenticateCall();
  static CreateCall createCall = CreateCall();
  static CreateUpdateSubCategoryCall createUpdateSubCategoryCall =
      CreateUpdateSubCategoryCall();
  static CreateUpdate2Call createUpdate2Call = CreateUpdate2Call();
  static SaveItemsToCartCall saveItemsToCartCall = SaveItemsToCartCall();
  static GetS3PresignedUrlCall getS3PresignedUrlCall = GetS3PresignedUrlCall();
  static PingCall pingCall = PingCall();
  static SignOutCall signOutCall = SignOutCall();
}

class VerifyPhoneNumberWithCodeCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? uuid = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "countryCode": 0,
  "phoneNumber": 0,
  "code": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyPhoneNumberWithCode',
      apiUrl: '${baseUrl}/customers/${uuid}/phonenumber/verification',
      callType: ApiCallType.PUT,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "firstName": "",
  "lastName": "",
  "phoneNumber": "",
  "email": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signUp',
      apiUrl: '${baseUrl}/users/signup',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignInCall {
  Future<ApiCallResponse> call({
    String? xApiKey = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signIn',
      apiUrl: '${baseUrl}/users/signin',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': '${xApiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSetupIntentCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "customerUuid": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSetupIntent',
      apiUrl: '${baseUrl}/stripe/setupintent',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePaymentIntentCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "customerUuid": "",
  "paymentIntentId": "",
  "paymentMethodUuid": "",
  "savePaymentMethodForFutureUse": false,
  "cart": {
    "uuid": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createPaymentIntent',
      apiUrl: '${baseUrl}/stripe/paymentintent',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUpdateCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "",
  "expeditedDelivery": false,
  "deliveryActive": false,
  "adjustDeliveryTime": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUpdate',
      apiUrl: '${baseUrl}/store-settings/create-update',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUpdate1Call {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "",
  "name": "",
  "description": "",
  "price": 0,
  "stockQuantity": 0,
  "imageUrl": "",
  "categories": [
    {
      "uuid": ""
    }
  ],
  "subCategories": [
    {
      "uuid": ""
    }
  ],
  "brand": {
    "uuid": ""
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUpdate_1',
      apiUrl: '${baseUrl}/products/create-update',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RequestPhoneNumberVerificationCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? uuid = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "countryCode": 0,
  "phoneNumber": 0,
  "hash": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'requestPhoneNumberVerification',
      apiUrl: '${baseUrl}/customers/${uuid}/phonenumber/request-verification',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPaymentMethodCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? uuid = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "setupIntentId": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addPaymentMethod',
      apiUrl: '${baseUrl}/customers/${uuid}/paymentmethod',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthenticateCall {
  Future<ApiCallResponse> call({
    String? xApiKey = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "name": "",
  "token": "",
  "rememberMe": false
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authenticate',
      apiUrl: '${baseUrl}/customers/authenticate',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': '${xApiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "",
  "pickupAddress": {
    "id": 0,
    "uuid": "",
    "street": "",
    "street2": "",
    "city": "",
    "state": "",
    "zipcode": "",
    "country": "",
    "longitude": 0,
    "latitude": 0,
    "timezone": "",
    "createdAt": "",
    "updatedAt": ""
  },
  "dropOffAddress": {
    "id": 0,
    "uuid": "",
    "street": "",
    "street2": "",
    "city": "",
    "state": "",
    "zipcode": "",
    "country": "",
    "longitude": 0,
    "latitude": 0,
    "timezone": "",
    "createdAt": "",
    "updatedAt": ""
  },
  "packageType": "DOCUMENT",
  "packageWeight": 0,
  "instructions": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create',
      apiUrl: '${baseUrl}/courier-services/create-update',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUpdateSubCategoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "",
  "name": "",
  "description": "",
  "category": {
    "uuid": ""
  },
  "iconUrl": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUpdateSubCategory',
      apiUrl: '${baseUrl}/categories/subcategory/create-update',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUpdate2Call {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "",
  "name": "",
  "description": "",
  "iconUrl": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUpdate_2',
      apiUrl: '${baseUrl}/categories/create-update',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveItemsToCartCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "customer": {
    "uuid": ""
  },
  "cartItems": [
    {
      "id": 0,
      "uuid": "",
      "product": {
        "id": 0,
        "uuid": "",
        "name": "",
        "description": "",
        "price": 0,
        "stockQuantity": 0,
        "imageUrl": "",
        "deleted": false,
        "active": false,
        "categories": [
          {
            "id": 0,
            "uuid": "",
            "name": "",
            "description": "",
            "iconUrl": ""
          }
        ],
        "brand": {
          "id": 0,
          "uuid": "",
          "name": "",
          "description": "",
          "createdAt": "",
          "updatedAt": ""
        },
        "createdAt": "",
        "updatedAt": ""
      },
      "quantity": 0,
      "createdAt": "",
      "updatedAt": ""
    }
  ],
  "createdAt": "",
  "updatedAt": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saveItemsToCart',
      apiUrl: '${baseUrl}/carts/save',
      callType: ApiCallType.POST,
      headers: {
        'token': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetS3PresignedUrlCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? fileEntityName = '',
    String? fileName = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getS3PresignedUrl',
      apiUrl: '${baseUrl}/s3-files/generate-presigned-url',
      callType: ApiCallType.GET,
      headers: {
        'token': '${token}',
      },
      params: {
        'fileEntityName': fileEntityName,
        'fileName': fileName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PingCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ping',
      apiUrl: '${baseUrl}/ping',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SignOutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = OpenAPIDefinitionGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'signOut',
      apiUrl: '${baseUrl}/customers/signout',
      callType: ApiCallType.DELETE,
      headers: {
        'token': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAPI definition Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
