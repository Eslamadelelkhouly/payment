import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentapp/Features/checkout/data/models/Init_payment_sheet_input_model.dart';
import 'package:paymentapp/Features/checkout/data/models/empheral_key_model/empheral_key_model.dart';
import 'package:paymentapp/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:paymentapp/Features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:paymentapp/core/utils/api_keys.dart';
import 'package:paymentapp/core/utils/api_service.dart';

class StripService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentintentinputmodel) async {
    var response = await apiService.post(
      body: paymentintentinputmodel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      contentType: Headers.formUrlEncodedContentType,
      headers: {'Authorization': "Bearer ${ApiKeys.secretKey}"},
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetinputModel initPaymentsheetinputmodel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        customerEphemeralKeySecret:
            initPaymentsheetinputmodel.empheralKeySecret,
        paymentIntentClientSecret: initPaymentsheetinputmodel.ClinetSecret,
        merchantDisplayName: 'Elkhouly',
        customerId: initPaymentsheetinputmodel.customerId,
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentInputModel);
    var ephmeralKeyModel =
        await createEmpheralKey(customerId: paymentInputModel.customerId);

    var initPaymentSheetInputModel = InitPaymentSheetinputModel(
      ClinetSecret: paymentIntentModel.clientSecret!,
      customerId: paymentInputModel.customerId,
      empheralKeySecret: ephmeralKeyModel.secret!,
    );
    await initPaymentSheet(
        initPaymentsheetinputmodel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EmpheralKeyModel> createEmpheralKey(
      {required String customerId}) async {
    var response = await apiService.post(
      body: {
        'customer': customerId,
      },
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      token: ApiKeys.secretKey,
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Authorization': "Bearer ${ApiKeys.secretKey}",
        'Stripe-Version': '2024-06-20',
      },
    );
    var empheralKey = EmpheralKeyModel.fromJson(response.data);
    return empheralKey;
  }
}
