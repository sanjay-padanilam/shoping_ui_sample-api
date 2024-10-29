import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoping_ui_sample/model/homescreen_moderl.dart';

class HomescreenController with ChangeNotifier {
  Homescreenmodel? modelobj;

  Future<void> getproducts() async {
    final url = Uri.parse("https://fakestoreapi.com/products");
    try {
      var responce = await http.get(url);
      if (responce.statusCode == 200) {
        modelobj = homescreenmodelFromJson(responce.body);
      }
    } catch (e) {}
  }
}
