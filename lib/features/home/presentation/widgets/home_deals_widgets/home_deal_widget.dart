import 'package:flutter/material.dart';

class HomeDealWidget extends StatelessWidget {
  const HomeDealWidget(
      {Key? key,
      required this.fav,
      required this.title,
      required this.pieces,
      required this.minutes,
      required this.salary,
      required this.offer})
      : super(key: key);
  final bool fav;
  final String title;
  final int pieces;
  final int minutes;
  final double salary;
  final double offer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 55),
      child: Row(
        children: [
          dealCard(fav),
          const Padding(padding: EdgeInsets.only(right: 16)),
          dealDetail(
              ctx: context,
              title: 'Summer Sun Ice Cream Pack',
              dollarsOffer: 18,
              dollarsSalary: 12,
              minutes: 15,
              pieces: 5)
        ],
      ),
    );
  }
}

Widget dealCard(bool fav) => Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0XFFFBEDD8),
          ),
          width: 125,
          height: 125,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 18,
          child: Center(
              child: fav
                  ? const Icon(Icons.favorite, color: Colors.red, size: 20)
                  : const Icon(Icons.favorite_border_outlined,
                      color: Colors.grey, size: 20)),
        ),
      ],
    );

Widget dealDetail({required String title,
    required int pieces,
    required int minutes,
    required double dollarsSalary,
    required double dollarsOffer, required BuildContext ctx}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,
          style: const TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500)),
      const Padding(padding: EdgeInsets.only(bottom: 9)),
      Text('Pieces $pieces',
          style: const TextStyle(color: Colors.black, fontSize: 14)),
      const Padding(padding: EdgeInsets.only(bottom: 9)),
      Row(
        children: [
          const Icon(Icons.location_on_outlined,
              color: Colors.grey, size: 16.5),
          const Padding(padding: EdgeInsets.only(right: 10)),
          Text('$minutes Minutes Away',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w300)),
        ],
      ),
      const Padding(padding: EdgeInsets.only(bottom: 9)),
      Row(
        children: [
          Text('\$ $dollarsSalary',
              style: TextStyle(
                  color: Theme.of(ctx).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const Padding(padding: EdgeInsets.only(right: 14)),
          Text('\$ $dollarsOffer',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.lineThrough)),
        ],
      )
    ],
  );
}
