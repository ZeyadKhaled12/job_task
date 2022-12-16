import 'package:flutter/material.dart';

import 'cart_add_minus_widget.dart';
import 'cart_detail_widget.dart';

// all cart widget consist of 2 widgets cart detail and cart add&minus buttons

class CartWidget extends StatelessWidget {
  const CartWidget(
      {Key? key,
      required this.colorOfCart,
      required this.title,
      required this.type,
      required this.salary,required this.count,
        required this.addFun, required this.minusFun})
      : super(key: key);
  final Color colorOfCart;
  final String title;
  final double salary;
  final String type;
  final int count;
  final Function() addFun;
  final Function() minusFun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CartDetailWidget(
              colorOfCart: colorOfCart,
              title: title,
              salary: salary,
              type: type),
          CartAddMinusWidget(count: count, addFun: addFun, minusFun: minusFun)
        ],
      ),
    );
  }
}
