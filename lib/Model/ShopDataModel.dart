// To parse this JSON data, do
//
//     final shopData = shopDataFromJson(jsonString);

import 'dart:convert';

List<ShopData> shopDataFromJson(String str) =>
    List<ShopData>.from(json.decode(str).map((x) => ShopData.fromJson(x)));

String shopDataToJson(List<ShopData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShopData {
  ShopData({
    required this.id,
    required this.partition,
    required this.displayError,
    required this.isimageDisplayed,
    required this.odooSellerId,
    required this.odooShopId,
    required this.shopaddress,
    required this.shopcity,
    required this.shopcountry,
    required this.shopemail,
    required this.shoplocation,
    required this.shopmobilenumber,
    required this.shopmzip,
    required this.shopname,
    required this.shopphonenumber,
    required this.status,
    this.iconpath,
    this.shopstreet,
    this.products,
    this.cashDrawerData,
    this.orders,
    this.customers,
    this.stocks,
  });

  String id;
  String partition;
  bool displayError;
  bool isimageDisplayed;
  String odooSellerId;
  int odooShopId;
  String shopaddress;
  String shopcity;
  Shopcountry shopcountry;
  String shopemail;
  String shoplocation;
  String shopmobilenumber;
  String shopmzip;
  String shopname;
  String shopphonenumber;
  Status status;
  String? iconpath;
  String? shopstreet;
  List<int>? products;
  List<String>? cashDrawerData;
  List<String>? orders;
  List<String>? customers;
  List<String>? stocks;

  factory ShopData.fromJson(Map<String, dynamic> json) => ShopData(
        id: json["_id"],
        partition: json["_partition"],
        displayError: json["displayError"],
        isimageDisplayed: json["isimageDisplayed"],
        odooSellerId: json["odooSellerId"],
        odooShopId: json["odooShopId"],
        shopaddress: json["shopaddress"],
        shopcity: json["shopcity"],
        shopcountry: shopcountryValues.map[json["shopcountry"]]!,
        shopemail: json["shopemail"],
        shoplocation: json["shoplocation"],
        shopmobilenumber: json["shopmobilenumber"],
        shopmzip: json["shopmzip"],
        shopname: json["shopname"],
        shopphonenumber: json["shopphonenumber"],
        status: statusValues.map[json["status"]]!,
        iconpath: json["iconpath"],
        shopstreet: json["shopstreet"],
        products: json["products"] == null
            ? []
            : List<int>.from(json["products"]!.map((x) => x)),
        cashDrawerData: json["cashDrawerData"] == null
            ? []
            : List<String>.from(json["cashDrawerData"]!.map((x) => x)),
        orders: json["orders"] == null
            ? []
            : List<String>.from(json["orders"]!.map((x) => x)),
        customers: json["customers"] == null
            ? []
            : List<String>.from(json["customers"]!.map((x) => x)),
        stocks: json["stocks"] == null
            ? []
            : List<String>.from(json["stocks"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "_partition": partition,
        "displayError": displayError,
        "isimageDisplayed": isimageDisplayed,
        "odooSellerId": odooSellerId,
        "odooShopId": odooShopId,
        "shopaddress": shopaddress,
        "shopcity": shopcity,
        "shopcountry": shopcountryValues.reverse[shopcountry],
        "shopemail": shopemail,
        "shoplocation": shoplocation,
        "shopmobilenumber": shopmobilenumber,
        "shopmzip": shopmzip,
        "shopname": shopname,
        "shopphonenumber": shopphonenumber,
        "status": statusValues.reverse[status],
        "iconpath": iconpath,
        "shopstreet": shopstreet,
        "products":
            products == null ? [] : List<dynamic>.from(products!.map((x) => x)),
        "cashDrawerData": cashDrawerData == null
            ? []
            : List<dynamic>.from(cashDrawerData!.map((x) => x)),
        "orders":
            orders == null ? [] : List<dynamic>.from(orders!.map((x) => x)),
        "customers": customers == null
            ? []
            : List<dynamic>.from(customers!.map((x) => x)),
        "stocks":
            stocks == null ? [] : List<dynamic>.from(stocks!.map((x) => x)),
      };
}

enum Shopcountry { CI, SN, CI_BINGERVILLE }

final shopcountryValues = EnumValues({
  "CI": Shopcountry.CI,
  "CI bingerville ": Shopcountry.CI_BINGERVILLE,
  "SN": Shopcountry.SN
});

enum Status { OPEN }

final statusValues = EnumValues({"Open": Status.OPEN});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
