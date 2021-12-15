import 'package:flutter/material.dart';

class ActivationModel{
 final String subDomain;
 final String schoolName;
 final String logoUrl;


 ActivationModel({required this.subDomain,required this.schoolName,required this.logoUrl});

 factory ActivationModel.fromJson(Map<String, dynamic> json) {
   return ActivationModel(subDomain: json['subDomain'], schoolName: json['schoolName'], logoUrl: json['logoUrl']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subDomain'] = this.subDomain;
    data['schoolName'] = this.schoolName;
    data['logoUrl'] = this.logoUrl;
    return data;
  }
}