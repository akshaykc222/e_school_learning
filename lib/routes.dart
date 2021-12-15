
import 'package:e_school_learning/Pages/ActivatePage.dart';
import 'package:e_school_learning/Pages/LoginPage.dart';
import 'package:e_school_learning/Pages/LoginPageWeb.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';

Map<String,WidgetBuilder> routes={
  routeActivation :(context)=>ActivatePage(),
  routeLogin:(context)=>LoginPage(),
  routeLoginWeb:(context)=>LoginPageWeb()
};

///route name constants
const String routeActivation="/activationPage";
const String routeLogin="/loginPage";
const String routeLoginWeb="/loginWebPage";