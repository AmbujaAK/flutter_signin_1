import 'dart:convert';

class SellerDetailsModel {
  String seller_logo;
  String name;
  String term_condition_url;
  bool is_term_condition;
  String business_name;
  String seller_id;

  SellerDetailsModel({
    required this.seller_logo,
    required this.name,
    required this.term_condition_url,
    required this.is_term_condition,
    required this.business_name,
    required this.seller_id,
  });

  Map<String, dynamic> toMap() {
    return {
      'seller_logo': seller_logo,
      'name': name,
      'term_condition_url': term_condition_url,
      'is_term_condition': is_term_condition,
      'business_name': business_name,
      'seller_id': seller_id,
    };
  }

  factory SellerDetailsModel.fromMap(Map<String, dynamic> map) {
    return SellerDetailsModel(
      seller_logo: map['seller_logo'],
      name: map['name'],
      term_condition_url: map['term_condition_url'],
      is_term_condition: map['is_term_condition'],
      business_name: map['business_name'],
      seller_id: map['seller_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SellerDetailsModel.fromJson(String source) =>
      SellerDetailsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SellerDetailsModel(seller_logo: $seller_logo, name: $name, term_condition_url: $term_condition_url, is_term_condition: $is_term_condition, business_name: $business_name, seller_id: $seller_id)';
  }
}
