import 'item.dart';

class ItemListModel {
  List<OrderModel>? orders;

  ItemListModel({required this.orders});

  factory ItemListModel.fromJson(Map<String, dynamic> json) => ItemListModel(
    orders: (json['items'] as List<dynamic>?)
        ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'items': orders?.map((e) => e.toJson()).toList(),
  };
}
