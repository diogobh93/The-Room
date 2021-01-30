import 'package:flutter/foundation.dart';

class Equipments {
  String tag;
  String title;
  String description;
  String image;
  String price;
  String dueDate;

  Equipments({
    @required this.tag,
    this.title,
    this.description,
    @required this.image,
    @required this.price,
  });

  Equipments.fromMap(Map map)
      : this(
          tag: map['tag'],
          title: map['title'],
          description: map['description'],
          image: map['image'],
          price: map['price'],
        );

  Map<String, dynamic> asMap() => {
        'tag': tag,
        'title': title,
        'description': description,
        'image': image,
        'price': price,
      };

  Equipments.fromJson(Map<String, dynamic> json)
      : tag = json['tag'],
        title = json['title'],
        description = json['description'],
        image = json['image'],
        price = json['price'];

  Map<String, dynamic> toMap() {
    return {
      'tag': tag,
      'title': title,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  Map<String, dynamic> toJson() => {
        'tag': tag,
        'title': title,
        'description': description,
        'image': image,
        'price': price,
      };
}
