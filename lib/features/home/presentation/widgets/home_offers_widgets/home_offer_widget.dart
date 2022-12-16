
import 'package:flutter/material.dart';


class HomeOfferWidget extends StatelessWidget {
  const HomeOfferWidget(
      {Key? key,
      required this.salary,
      required this.salaryOffer,
      required this.title,
      required this.date})
      : super(key: key);
  final String title;
  final double salary;
  final double salaryOffer;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 29),
      child: Container(
        width: MediaQuery.of(context).size.width- 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor.withOpacity(0.26)),
        padding: const EdgeInsets.only(top: 25, right: 25, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Color(0XFF21114B),
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(bottom: 15)),
                Row(
                  children: [
                    Text('\$ $salary',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const Padding(padding: EdgeInsets.only(right: 14)),
                    Text('\$ $salaryOffer',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.lineThrough)),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 24)),
                Text('* Available until $date',
                    style: const TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
