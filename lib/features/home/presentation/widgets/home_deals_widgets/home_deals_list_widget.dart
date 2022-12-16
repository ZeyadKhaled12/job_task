
import 'package:flutter/material.dart';

import '../../../domain/entities/deal.dart';
import 'home_deal_widget.dart';



class HomeDealsListWidget extends StatelessWidget {
  const HomeDealsListWidget({Key? key, required this.deals}) : super(key: key);
  final List<Deal> deals;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 168,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Deals of the day',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18)),
          const Padding(padding: EdgeInsets.only(top: 26)),
          Expanded(
            child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return HomeDealWidget(
                    fav: deals[index].isFavourite,
                    title: deals[index].title,
                    salary: deals[index].salary,
                    minutes: deals[index].minutes,
                    offer: deals[index].offers,
                    pieces: deals[index].pieces,
                  );
                },
                itemCount: deals.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true),
          )
        ],
      ),
    );
  }
}
