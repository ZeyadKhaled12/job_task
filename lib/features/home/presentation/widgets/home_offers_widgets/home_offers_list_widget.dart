import 'package:flutter/material.dart';
import 'package:job_task/features/home/domain/entities/offer.dart';

import 'home_offer_widget.dart';

class HomeOffersListWidget extends StatelessWidget {
  const HomeOffersListWidget({Key? key, required this.offers}) : super(key: key);
  final List<Offer> offers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 165,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return HomeOfferWidget(
              date: offers[index].date,
              title: offers[index].title,
              salary:  offers[index].salary,
              salaryOffer:  offers[index].salaryOffer
            );
          },
          itemCount: offers.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        )
    );
  }
}