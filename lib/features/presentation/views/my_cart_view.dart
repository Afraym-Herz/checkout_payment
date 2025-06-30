import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(child: Image.asset("assets/images/arrow.png")),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("My Cart" , style: Styles.style25 , ),
        centerTitle: true,
      )  ,
      body: MyCartViewBody(),
    );
  }
}
