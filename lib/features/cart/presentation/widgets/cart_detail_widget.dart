import 'package:flutter/material.dart';

// detail of every cart like salary, etc....

class CartDetailWidget extends StatelessWidget {
  const CartDetailWidget(
      {Key? key,
      required this.colorOfCart,
      required this.title,
      required this.type,
      required this.salary})
      : super(key: key);
  final Color colorOfCart;
  final String title;
  final double salary;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22), color: colorOfCart),
        ),
        const Padding(padding: EdgeInsets.only(right: 20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(color: Colors.black, fontSize: 15)),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            Text(type,
                style: const TextStyle(color: Colors.grey, fontSize: 12)),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            Text('\$ $salary',
                style: const TextStyle(color: Color(0XFFB13E55), fontSize: 22)),
          ],
        )
      ],
    );
  }
}
