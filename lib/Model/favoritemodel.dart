// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    bool status;
    List<Datum> data;

    Welcome({
        required this.status,
        required this.data,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    int id;
    int userId;
    int productId;
    DateTime createdAt;
    DateTime updatedAt;
    Product product;

    Datum({
        required this.id,
        required this.userId,
        required this.productId,
        required this.createdAt,
        required this.updatedAt,
        required this.product,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        productId: json["product_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        product: Product.fromJson(json["product"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "product_id": productId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product": product.toJson(),
    };
}

class Product {
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
    dynamic metaTitle;
    dynamic metaDescription;
    dynamic metaKeywords;
    dynamic deletedAt;
    DateTime createdAt;
    DateTime updatedAt;
    Category category;
    List<Images> images;
    List<SkuTable> skuTable;

    Product({
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
        required this.category,
        required this.images,
        required this.skuTable,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
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
        category: Category.fromJson(json["category"]),
        images: List<Images>.from(json["images"].map((x) => Images.fromJson(x))),
        skuTable: List<SkuTable>.from(json["sku_table"].map((x) => SkuTable.fromJson(x))),
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
        "category": category.toJson(),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "sku_table": List<dynamic>.from(skuTable.map((x) => x.toJson())),
    };
}

class Category {
    int id;
    String categoryName;

    Category({
        required this.id,
        required this.categoryName,
    });

    factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        categoryName: json["category_name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
    };
}

class Images {
    int id;
    int productId;
    String images;
    DateTime createdAt;
    DateTime updatedAt;

    Images({
        required this.id,
        required this.productId,
        required this.images,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        id: json["id"],
        productId: json["product_id"],
        images: json["images"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "images": images,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class SkuTable {
    int id;
    int productId;
    String sku;
    int stock;
    int price;
    int discountPrice;
    int ratings;
    String ages;
    DateTime createdAt;
    DateTime updatedAt;

    SkuTable({
        required this.id,
        required this.productId,
        required this.sku,
        required this.stock,
        required this.price,
        required this.discountPrice,
        required this.ratings,
        required this.ages,
        required this.createdAt,
        required this.updatedAt,
    });

    factory SkuTable.fromJson(Map<String, dynamic> json) => SkuTable(
        id: json["id"],
        productId: json["Product_id"],
        sku: json["sku"],
        stock: json["stock"],
        price: json["price"],
        discountPrice: json["discount_price"],
        ratings: json["ratings"],
        ages: json["ages"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Product_id": productId,
        "sku": sku,
        "stock": stock,
        "price": price,
        "discount_price": discountPrice,
        "ratings": ratings,
        "ages": ages,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
