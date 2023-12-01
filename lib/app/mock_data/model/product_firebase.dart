import 'package:get/get.dart';

class ProductFirebase {
  ProductFirebase({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });

  final String id;
  final String image;
  final String name;
  final int price;
  RxInt quantity = 0.obs;

  factory ProductFirebase.fromMap(Map<String, dynamic> map) => ProductFirebase(
    id: map['id'] ?? "",
    name: map['name'] ?? "",
    image: map['image'] ?? "",
    price: map['price'] ?? 0,
    quantity: 0.obs
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "image": image,
    "price": price,
  };
}
