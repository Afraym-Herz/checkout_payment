
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
          Expanded(child: Image.asset('assets/images/basketProduct.png')),
          OrderInfoItem(productName: "Order Subtotal" , titleStyle: Styles.style18 , price: r'$42.97' , priceStyle: Styles.style18,),
          SizedBox(height: 3,),
          OrderInfoItem(productName: "Discount" , titleStyle: Styles.style18 , price: r'$0' , priceStyle: Styles.style18, ),
          SizedBox(height: 3,),
          OrderInfoItem(productName: 'Shipping' , titleStyle: Styles.style18 , price: r'$8' , priceStyle: Styles.style18,) ,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(color: Color(0xffC7C7C7), thickness: 2, height: 34,  ),
          ),
          OrderInfoItem(productName: "Total", titleStyle: Styles.style24, price: r"$50.97", priceStyle: Styles.style24),
          SizedBox(height: 16,),
          CustomButton(title: 'Complete Payment', onTap: () {}, ) ,
          SizedBox(height: 35,), 
        ],
      ),
    );
  }
}