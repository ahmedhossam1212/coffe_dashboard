class CategoryModel {
  Data data;

  CategoryModel({
    required this.data,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  int id;
  String name;
  String image;
  dynamic productsCount;
  String createdAt;

  Data({
    required this.id,
    required this.name,
    required this.image,
    required this.productsCount,
    required this.createdAt,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        image: json["image"] ?? "",
        productsCount: json["products count"] ?? 0,
        createdAt: json["created at"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "products count": productsCount,
        "created at": createdAt,
      };
}
