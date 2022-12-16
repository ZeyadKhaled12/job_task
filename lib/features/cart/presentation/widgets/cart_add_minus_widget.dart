import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

//add and minus buttons
class CartAddMinusWidget extends StatelessWidget {
  const CartAddMinusWidget({Key? key, required this.count,
    required this.addFun, required this.minusFun}) : super(key: key);
  final int count;
  final Function() addFun;
  final Function() minusFun;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _addMinusBtn(iconData: Icons.add, fun: addFun),
        const Padding(padding: EdgeInsets.only(right: 10)),
        Text('$count', style: const TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold
        )),
        const Padding(padding: EdgeInsets.only(right: 10)),
        _addMinusBtn(iconData: Icons.remove, fun: minusFun),
      ],
    );
  }
}

//button for add and minus carts

Widget _addMinusBtn({required IconData iconData, required Function() fun}) => InkWell(
  onTap: fun,
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      color: const Color(0XFFB0EAFD),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4),
      child: Icon(iconData, color: const Color(0XFF48B6DA),
        size: 34,
      ),
    ),

  ),
);

