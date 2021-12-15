
import 'dart:convert';

import 'package:e_school_learning/models/activation_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginProvider with ChangeNotifier{
  bool isLoginned=false;
  String imageUrl="";
  String schoolName="";
  String subDomain="";
  Future<int> getActivation(String key) async{
    String res;
    var headers = {
      'Content-Type': 'application/json'
    };
    var params = {
      "code":key,
    };
    var response = await http.post(Uri.parse("https://api.schooltestonline.xyz/get-schooldomain"),body: json.encode(params),headers: headers);
    if (response.statusCode==200) {
      var jsonData=json.decode(response.body);
      ActivationModel ac=ActivationModel.fromJson(jsonData);
      imageUrl=ac.logoUrl;
      schoolName=ac.schoolName;
      subDomain=ac.subDomain;
      notifyListeners();
      print(response.body);
    }else{

    }
    return response.statusCode;
  }







}