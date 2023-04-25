// To parse this JSON data, do
//
//     final carModel = carModelFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CarModel carModelFromMap(String str) => CarModel.fromMap(json.decode(str));

String carModelToMap(CarModel data) => json.encode(data.toMap());

class CarModel {
    CarModel({
        required this.carName,
        required this.country,
        required this.yearOfFoundation,
        required this.model,
    });

    final String carName;
    final String country;
    final String yearOfFoundation;
    final List<Model> model;

    factory CarModel.fromMap(Map<String, dynamic> json) => CarModel(
        carName: json["car_name"],
        country: json["country"],
        yearOfFoundation: json["year_of_foundation"],
        model: List<Model>.from(json["model"].map((x) => Model.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "car_name": carName,
        "country": country,
        "year_of_foundation": yearOfFoundation,
        "model": List<dynamic>.from(model.map((x) => x.toMap())),
    };
}

class Model {
    Model({
        required this.modelName,
        required this.price,
    });

    final String modelName;
    final int price;

    factory Model.fromMap(Map<String, dynamic> json) => Model(
        modelName: json["model_name"],
        price: json["price"],
    );

    Map<String, dynamic> toMap() => {
        "model_name": modelName,
        "price": price,
    };
}
