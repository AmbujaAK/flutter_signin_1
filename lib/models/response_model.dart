import 'dart:convert';

import 'package:flutter_signin_1/models/seller_details_model.dart';

class ResponseModel {
  String? firstname;
  String? store_details;
  String? country_number_code;
  int? sellerStoreId;
  bool? click_and_collect;
  String? presentation;
  bool? loyaltyExclusive;
  String? sellerId;
  bool? pos;
  SellerDetailsModel? seller_details;
  bool? is_test;
  String? email;
  int? pwd_expired_in_days;
  String? currency_symbol;
  int? roleId;
  String? currency_iso;
  bool? is_password_expiring_soon;
  String? role_code;
  String? access_token;
  String? userId;
  String? lastname;
  bool? loyaltyEnabled;
  bool? is_password_expired;
  bool? is_first_signin;
  String? phone;
  String? default_store_id;
  String? response;
  bool? fulfillment;
  String? tokenType;
  String? default_smp_id;

  ResponseModel({
    this.firstname,
    this.store_details,
    this.country_number_code,
    this.sellerStoreId,
    this.click_and_collect,
    this.presentation,
    this.loyaltyExclusive,
    this.sellerId,
    this.pos,
    this.seller_details,
    this.is_test,
    this.email,
    this.pwd_expired_in_days,
    this.currency_symbol,
    this.roleId,
    this.currency_iso,
    this.is_password_expiring_soon,
    this.role_code,
    this.access_token,
    this.userId,
    this.lastname,
    this.loyaltyEnabled,
    this.is_password_expired,
    this.is_first_signin,
    this.phone,
    this.default_store_id,
    this.response,
    this.fulfillment,
    this.tokenType,
    this.default_smp_id,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstname': firstname,
      'store_details': store_details,
      'country_number_code': country_number_code,
      'sellerStoreId': sellerStoreId,
      'click_and_collect': click_and_collect,
      'presentation': presentation,
      'loyaltyExclusive': loyaltyExclusive,
      'sellerId': sellerId,
      'pos': pos,
      'seller_details': seller_details?.toMap(),
      'is_test': is_test,
      'email': email,
      'pwd_expired_in_days': pwd_expired_in_days,
      'currency_symbol': currency_symbol,
      'roleId': roleId,
      'currency_iso': currency_iso,
      'is_password_expiring_soon': is_password_expiring_soon,
      'role_code': role_code,
      'access_token': access_token,
      'userId': userId,
      'lastname': lastname,
      'loyaltyEnabled': loyaltyEnabled,
      'is_password_expired': is_password_expired,
      'is_first_signin': is_first_signin,
      'phone': phone,
      'default_store_id': default_store_id,
      'response': response,
      'fulfillment': fulfillment,
      'tokenType': tokenType,
      'default_smp_id': default_smp_id,
    };
  }

  factory ResponseModel.fromMap(Map<String, dynamic> map) {
    return ResponseModel(
      firstname: map['firstname'],
      store_details: map['store_details'],
      country_number_code: map['country_number_code'],
      sellerStoreId: map['sellerStoreId'],
      click_and_collect: map['click_and_collect'],
      presentation: map['presentation'],
      loyaltyExclusive: map['loyaltyExclusive'],
      sellerId: map['sellerId'],
      pos: map['pos'],
      seller_details: SellerDetailsModel.fromMap(map['seller_details']),
      is_test: map['is_test'],
      email: map['email'],
      pwd_expired_in_days: map['pwd_expired_in_days'],
      currency_symbol: map['currency_symbol'],
      roleId: map['roleId'],
      currency_iso: map['currency_iso'],
      is_password_expiring_soon: map['is_password_expiring_soon'],
      role_code: map['role_code'],
      access_token: map['access_token'],
      userId: map['userId'],
      lastname: map['lastname'],
      loyaltyEnabled: map['loyaltyEnabled'],
      is_password_expired: map['is_password_expired'],
      is_first_signin: map['is_first_signin'],
      phone: map['phone'],
      default_store_id: map['default_store_id'],
      response: map['response'],
      fulfillment: map['fulfillment'],
      tokenType: map['tokenType'],
      default_smp_id: map['default_smp_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponseModel.fromJson(String source) =>
      ResponseModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ResponseModel(firstname: $firstname, store_details: $store_details, country_number_code: $country_number_code, sellerStoreId: $sellerStoreId, click_and_collect: $click_and_collect, presentation: $presentation, loyaltyExclusive: $loyaltyExclusive, sellerId: $sellerId, pos: $pos, seller_details: $seller_details, is_test: $is_test, email: $email, pwd_expired_in_days: $pwd_expired_in_days, currency_symbol: $currency_symbol, roleId: $roleId, currency_iso: $currency_iso, is_password_expiring_soon: $is_password_expiring_soon, role_code: $role_code, access_token: $access_token, userId: $userId, lastname: $lastname, loyaltyEnabled: $loyaltyEnabled, is_password_expired: $is_password_expired, is_first_signin: $is_first_signin, phone: $phone, default_store_id: $default_store_id, response: $response, fulfillment: $fulfillment, tokenType: $tokenType, default_smp_id: $default_smp_id)';
  }
}
