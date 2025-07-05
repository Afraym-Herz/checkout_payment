import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required String title}) {
  return AppBar(
    leading: SizedBox(child: Image.asset("assets/images/arrow.png")),
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: Text(title, style: Styles.style25),
    centerTitle: true,
  );
}
