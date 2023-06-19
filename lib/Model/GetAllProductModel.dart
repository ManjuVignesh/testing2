import 'dart:convert';

MongodbData mongodbDataFromJson(String str) =>
    MongodbData.fromJson(json.decode(str));

String mongodbDataToJson(MongodbData data) => json.encode(data.toJson());

class MongodbData {
  MongodbData({
    required this.id,
    required this.partition,
    required this.categories,
    required this.discountData,
    required this.formattedPrice,
    required this.image,
    required this.isDiscountApplied,
    required this.isEnabled,
    required this.isService,
    required this.isTaxableGoodsApplied,
    required this.name,
    required this.posShopId,
    required this.price,
    required this.quantity,
    required this.secondHand,
    required this.sku,
    required this.stock,
    required this.taxData,
    required this.trackInventory,
    required this.unitType,
    required this.barCode,
    required this.brandName,
    required this.cartQuantity,
    required this.cartTotal,
    required this.cartTotalFormatted,
    required this.discount,
    required this.formattedDiscount,
    required this.formattedSpecialPrice,
    required this.height,
    required this.length,
    required this.measurement,
    required this.measurementType,
    required this.pimId,
    required this.shortDescription,
    required this.specialPrice,
    required this.volume,
    required this.weight,
    required this.width,
  });

  int? id;
  String? partition;
  List<String?> categories;
  DiscountData? discountData;
  String? formattedPrice;
  String? image;
  bool? isDiscountApplied;
  bool? isEnabled;
  bool? isService;
  bool? isTaxableGoodsApplied;
  String? name;
  int? posShopId;
  String? price;
  String? quantity;
  bool? secondHand;
  String? sku;
  bool? stock;
  TaxData? taxData;
  bool? trackInventory;
  String? unitType;
  dynamic barCode;
  dynamic brandName;
  dynamic cartQuantity;
  dynamic cartTotal;
  dynamic cartTotalFormatted;
  dynamic discount;
  dynamic formattedDiscount;
  dynamic formattedSpecialPrice;
  dynamic height;
  dynamic length;
  dynamic measurement;
  dynamic measurementType;
  dynamic pimId;
  dynamic shortDescription;
  dynamic specialPrice;
  dynamic volume;
  dynamic weight;
  dynamic width;

  factory MongodbData.fromJson(Map<String, dynamic> json) => MongodbData(
        id: json["_id"],
        partition: json["_partition"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        discountData: DiscountData.fromJson(json["discountData"]),
        formattedPrice: json["formattedPrice"],
        image: json["image"],
        isDiscountApplied: json["isDiscountApplied"],
        isEnabled: json["isEnabled"],
        isService: json["isService"],
        isTaxableGoodsApplied: json["isTaxableGoodsApplied"],
        name: json["name"],
        posShopId: json["posShopId"],
        price: json["price"],
        quantity: json["quantity"],
        secondHand: json["secondHand"],
        sku: json["sku"],
        stock: json["stock"],
        taxData: TaxData.fromJson(json["taxData"]),
        trackInventory: json["trackInventory"],
        unitType: json["unitType"],
        barCode: json["barCode"],
        brandName: json["brandName"],
        cartQuantity: json["cartQuantity"],
        cartTotal: json["cartTotal"],
        cartTotalFormatted: json["cartTotalFormatted"],
        discount: json["discount"],
        formattedDiscount: json["formattedDiscount"],
        formattedSpecialPrice: json["formattedSpecialPrice"],
        height: json["height"],
        length: json["length"],
        measurement: json["measurement"],
        measurementType: json["measurementType"],
        pimId: json["pimID"],
        shortDescription: json["shortDescription"],
        specialPrice: json["specialPrice"],
        volume: json["volume"],
        weight: json["weight"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "_partition": partition,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "discountData": discountData?.toJson(),
        "formattedPrice": formattedPrice,
        "image": image,
        "isDiscountApplied": isDiscountApplied,
        "isEnabled": isEnabled,
        "isService": isService,
        "isTaxableGoodsApplied": isTaxableGoodsApplied,
        "name": name,
        "posShopId": posShopId,
        "price": price,
        "quantity": quantity,
        "secondHand": secondHand,
        "sku": sku,
        "stock": stock,
        "taxData": taxData?.toJson(),
        "trackInventory": trackInventory,
        "unitType": unitType,
        "barCode": barCode,
        "brandName": brandName,
        "cartQuantity": cartQuantity,
        "cartTotal": cartTotal,
        "cartTotalFormatted": cartTotalFormatted,
        "discount": discount,
        "formattedDiscount": formattedDiscount,
        "formattedSpecialPrice": formattedSpecialPrice,
        "height": height,
        "length": length,
        "measurement": measurement,
        "measurementType": measurementType,
        "pimID": pimId,
        "shortDescription": shortDescription,
        "specialPrice": specialPrice,
        "volume": volume,
        "weight": weight,
        "width": width,
      };
}

class DiscountData {
  DiscountData({
    required this.id,
    required this.discountName,
    required this.discountValue,
    required this.enabled,
    required this.type,
  });

  String? id;
  dynamic discountName;
  dynamic discountValue;
  bool? enabled;
  dynamic type;

  factory DiscountData.fromJson(Map<String, dynamic> json) => DiscountData(
        id: json["_id"],
        discountName: json["discountName"],
        discountValue: json["discountValue"],
        enabled: json["enabled"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "discountName": discountName,
        "discountValue": discountValue,
        "enabled": enabled,
        "type": type,
      };
}

class TaxData {
  TaxData({
    required this.id,
    required this.enabled,
    required this.taxName,
    required this.taxRate,
    required this.type,
  });

  String? id;
  bool? enabled;
  dynamic taxName;
  dynamic taxRate;
  dynamic type;

  factory TaxData.fromJson(Map<String, dynamic> json) => TaxData(
        id: json["_id"],
        enabled: json["enabled"],
        taxName: json["taxName"],
        taxRate: json["taxRate"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "enabled": enabled,
        "taxName": taxName,
        "taxRate": taxRate,
        "type": type,
      };
}
