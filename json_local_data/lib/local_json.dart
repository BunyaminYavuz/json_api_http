import 'dart:convert';
import 'package:flutter/material.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    carsJsonRead();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Json"),
      ),
      body: const Center(),
    );
  }

  carsJsonRead() async {
    String readString = await DefaultAssetBundle.of(context)
        .loadString("assets/data/cars.json");

    var jsonObject = jsonDecode(readString);
    debugPrint("***************");
    List carList = jsonObject;
    debugPrint(carList[0]["car_name"]);
    debugPrint(carList[0]["country"]);
    debugPrint(carList[0]["year_of_foundation"]);
    debugPrint(carList[0]["model"][0]["model_name"]);
    debugPrint(carList[0]["model"][0]["price"].toString());

    debugPrint("***************");
    debugPrint(carList[1]["car_name"]);
    debugPrint(carList[1]["country"]);
    debugPrint(carList[1]["year_of_foundation"]);
    debugPrint(carList[1]["model"][1]["model_name"]);
    debugPrint(carList[1]["model"][1]["price"].toString());
  }
}
