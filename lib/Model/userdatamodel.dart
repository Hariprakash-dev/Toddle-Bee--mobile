// To parse this JSON data, do
//
//     final fetchUserData = fetchUserDataFromJson(jsonString);

import 'dart:convert';

FetchUserData fetchUserDataFromJson(String str) => FetchUserData.fromJson(json.decode(str));

String fetchUserDataToJson(FetchUserData data) => json.encode(data.toJson());

class FetchUserData {
    bool status;
    Data data;

    FetchUserData({
        required this.status,
        required this.data,
    });

    factory FetchUserData.fromJson(Map<String, dynamic> json) => FetchUserData(
        status: json["status"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
    };
}

class Data {
    List<Datum> data;
    // List<dynamic> button;
    // List<dynamic> related;

    Data({
        required this.data,
        // required this.button,
        // required this.related,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        // button: List<dynamic>.from(json["button"].map((x) => x)),
        // related: List<dynamic>.from(json["related"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data  .map((x) => x.toJson())),
        // "button": List<dynamic>.from(button.map((x) => x)),
        // "related": List<dynamic>.from(related.map((x) => x)),
    };
}

class Datum {
    int id;
    String productName;
    int categoryId;
    String subcategory;
    String thumbnail;
    String ages;
    String description;
    String productCare;
    String productDetail;
    String certification;
    int status;
    String? metaTitle;
    String? metaDescription;
    String? metaKeywords;
    dynamic deletedAt;
    DateTime createdAt;
    DateTime updatedAt;
    // List<SkuTable> skuTable;
    // List<Image> images;

    Datum({
        required this.id,
        required this.productName,
        required this.categoryId,
        required this.subcategory,
        required this.thumbnail,
        required this.ages,
        required this.description,
        required this.productCare,
        required this.productDetail,
        required this.certification,
        required this.status,
        required this.metaTitle,
        required this.metaDescription,
        required this.metaKeywords,
        required this.deletedAt,
        required this.createdAt,
        required this.updatedAt,
        // required this.skuTable,
        // required this.images,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        productName: json["product_name"],
        categoryId: json["category_id"],
        subcategory: json["subcategory"],
        thumbnail: json["thumbnail"],
        ages: json["ages"],
        description: json["description"],
        productCare: json["product_care"],
        productDetail: json["product_detail"],
        certification: json["certification"],
        status: json["status"],
        metaTitle: json["meta_title"],
        metaDescription: json["meta_description"],
        metaKeywords: json["meta_keywords"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        // skuTable: List<SkuTable>.from(json["sku_table"].map((x) => SkuTable.fromJson(x))),
        // images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "category_id": categoryId,
        "subcategory": subcategory,
        "thumbnail": thumbnail,
        "ages": ages,
        "description": description,
        "product_care": productCare,
        "product_detail": productDetail,
        "certification": certification,
        "status": status,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "meta_keywords": metaKeywords,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        // "sku_table": List<dynamic>.from(skuTable.map((x) => x.toJson())),
        // "images": List<dynamic>.from(images.map((x) => x.toJson())),
    };
}

// class Image {
//     int id;
//     int productId;
//     String images;
//     DateTime createdAt;
//     DateTime updatedAt;

//     Image({
//         required this.id,
//         required this.productId,
//         required this.images,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     factory Image.fromJson(Map<String, dynamic> json) => Image(
//         id: json["id"],
//         productId: json["product_id"],
//         images: json["images"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "product_id": productId,
//         "images": images,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }

// class SkuTable {
//     int id;
//     int productId;
//     String sku;
//     int stock;
//     int price;
//     int discountPrice;
//     int ratings;
//     Ages ages;
//     DateTime createdAt;
//     DateTime updatedAt;

//     SkuTable({
//         required this.id,
//         required this.productId,
//         required this.sku,
//         required this.stock,
//         required this.price,
//         required this.discountPrice,
//         required this.ratings,
//         required this.ages,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     factory SkuTable.fromJson(Map<String, dynamic> json) => SkuTable(
//         id: json["id"],
//         productId: json["Product_id"],
//         sku: json["sku"],
//         stock: json["stock"],
//         price: json["price"],
//         discountPrice: json["discount_price"],
//         ratings: json["ratings"],
//         ages: agesValues.map[json["ages"]]!,
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "Product_id": productId,
//         "sku": sku,
//         "stock": stock,
//         "price": price,
//         "discount_price": discountPrice,
//         "ratings": ratings,
//         "ages": agesValues.reverse[ages],
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }

// enum Ages {
//     FREE_SIZE,
//     THE_03_MONTHS,
//     THE_1218_MONTHS,
//     THE_1224_MONTHS,
//     THE_1824_MONTHS,
//     THE_36_MONTHS,
//     THE_612_MONTHS,
//     THE_69_MONTHS,
//     THE_912_MONTHS
// }

// final agesValues = EnumValues({
//     "Free Size": Ages.FREE_SIZE,
//     "0-3 Months": Ages.THE_03_MONTHS,
//     "12-18 Months": Ages.THE_1218_MONTHS,
//     "12-24 Months": Ages.THE_1224_MONTHS,
//     "18-24 Months": Ages.THE_1824_MONTHS,
//     "3-6 Months": Ages.THE_36_MONTHS,
//     "6-12 Months": Ages.THE_612_MONTHS,
//     "6-9 Months": Ages.THE_69_MONTHS,
//     "9-12 Months": Ages.THE_912_MONTHS
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//             reverseMap = map.map((k, v) => MapEntry(v, k));
//             return reverseMap;
//     }
// }


















// To parse this JSON data, do
//
//     final fetchUserData = fetchUserDataFromJson(jsonString);

// import 'dart:convert';

// FetchUserData fetchUserDataFromJson(String str) => FetchUserData.fromJson(json.decode(str));

// String fetchUserDataToJson(FetchUserData data) => json.encode(data.toJson());

// class FetchUserData {
//     bool status;
//     List<Datum> data;

//     FetchUserData({
//         required this.status,
//         required this.data,
//     });

//     factory FetchUserData.fromJson(Map<String, dynamic> json) => FetchUserData(
//         status: json["status"],
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class Datum {
//     int id;
//     int typeId;
//     String categoryName;
//     String? thumbnail;
//     int status;
//     dynamic deletedAt;
//     DateTime createdAt;
//     DateTime updatedAt;

//     Datum({
//         required this.id,
//         required this.typeId,
//         required this.categoryName,
//         required this.thumbnail,
//         required this.status,
//         required this.deletedAt,
//         required this.createdAt,
//         required this.updatedAt,
//     });

//     factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         id: json["id"],
//         typeId: json["type_id"],
//         categoryName: json["category_name"],
//         thumbnail: json["thumbnail"],
//         status: json["status"],
//         deletedAt: json["deleted_at"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => { 
//         "id": id,
//         "type_id": typeId,
//         "category_name": categoryName,
//         "thumbnail": thumbnail,
//         "status": status,
//         "deleted_at": deletedAt,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }
