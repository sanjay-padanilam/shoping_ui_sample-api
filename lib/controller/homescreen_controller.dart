import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shoping_ui_sample/model/homescreen_moderl.dart';

class HomescreenController with ChangeNotifier {
  Homescreenmodel? modelobj;
  List cataorylist = [];
  bool isloading = false;

  // Future<void> getproducts() async {
  //   final url = Uri.parse("https://fakestoreapi.com/products");
  //   try {
  //     var responce = await http.get(url);
  //     if (responce.statusCode == 200) {
  //       modelobj = homescreenmodelFromJson(responce.body);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<void> getcatagories() async {
    isloading = true;
    notifyListeners();
    final catagoryUrl =
        Uri.parse("https://fakestoreapi.com/products/categories");
    try {
      var responce = await http.get(catagoryUrl);
      if (responce.statusCode == 200) {
        var convertedjson = jsonDecode(responce.body);
        cataorylist = convertedjson;
        cataorylist.insert(0, "All");
      }
    } catch (e) {
      print(e);
    }

    notifyListeners();
    isloading = false;
  }

  oncatagoryselection() {
    List screens = [
      Container(color: Colors.red),
      Container(color: Colors.blue),
      Container(color: Colors.green),
      Container(color: Colors.yellow),
      Container(color: Colors.orange),
    ];
  }

  getallProducts() {}
  getproductBycatagory() {}
}
