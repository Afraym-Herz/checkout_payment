 import 'package:checkout_payment/features/checkout_feature/data/models/amount_model/amount_model.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/amount_model/details.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/item_list_model/item.dart';
import 'package:checkout_payment/features/checkout_feature/data/models/item_list_model/item_list_model.dart';

({AmountModel amount, ItemListModel itemList}) getTransictionsData() {
    var amountModel = AmountModel(
      total: "100",
      currency: "USD",
      details: Details(shipping: "0", shippingDiscount: 0, subtotal: "100"),
    );

    List<OrderModel> orderList = [
      OrderModel(name: "Apple", quantity: 4, price: "5", currency: "USD"),
      OrderModel(name: "Pineapple", quantity: 5, price: "10", currency: "USD"),
    ];
    var itemListModel = ItemListModel(orders: orderList);

    return (amount: amountModel, itemList: itemListModel);
  }