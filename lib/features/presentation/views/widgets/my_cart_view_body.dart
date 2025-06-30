
import 'package:checkout_payment/core/utils/styles.dart';
import 'package:checkout_payment/features/presentation/views/widgets/custom_button.dart';
import 'package:checkout_payment/features/presentation/views/widgets/order_info_item.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18,),
          Center(child: SizedBox(child: Image.asset('assets/images/basketProduct.png' , width:277 , height: 450, ),)),
          SizedBox(height: 25,) ,
          OrderInfoItem(productName: "Order Subtotal" , titleStyle: Styles.style18 , price: r'$42.97' , priceStyle: Styles.style18,),
          SizedBox(height: 9,),
          OrderInfoItem(productName: "Discount" , titleStyle: Styles.style18 , price: r'$0' , priceStyle: Styles.style18, ),
          SizedBox(height: 9,),
          OrderInfoItem(productName: 'Shipping' , titleStyle: Styles.style18 , price: r'$8' , priceStyle: Styles.style18,) ,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(color: Color(0xffC7C7C7), thickness: 2, height: 34,  ),
          ),
          OrderInfoItem(productName: "Total", titleStyle: Styles.style24, price: r"$50.97", priceStyle: Styles.style24),
          SizedBox(height: 16,),
          CustomButton(title: 'Complete Payment', onTap: () {}, ) ,
        ],
      ),
    );
  }
}