import 'package:flutter/material.dart';
import 'package:job_task/features/home/data/datasource/home_remote_data_source.dart';
import 'package:job_task/features/home/data/repository/home_repo.dart';
import 'package:job_task/features/home/domain/repository/base_home_repo.dart';
import '../../../../core/general_widgets/general_title_widget.dart';
import '../../domain/entities/address.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/deal.dart';
import '../../domain/entities/offer.dart';
import '../../domain/usecases/get_addresses_uc.dart';
import '../../domain/usecases/get_categories_uc.dart';
import '../../domain/usecases/get_deals_uc.dart';
import '../../domain/usecases/get_offers_uc.dart';
import '../widgets/home_address_widgets/home_address_list_widget.dart';
import '../widgets/home_categories_widget.dart';
import '../widgets/home_deals_widgets/home_deals_list_widget.dart';
import '../widgets/home_offers_widgets/home_offers_list_widget.dart';
import '../widgets/home_search_widget.dart';


/*
home screen consist of  5 widgets
1- search widget
2- addresses
3- categories
4- deals
5- offers
*/


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //create  list addresses, categories, deals and offers

  late final List<Address> addresses;
  late final List<Category> categories;
  late final List<Deal> deals;
  late final List<Offer> offers;

  //create instance of usecases

  BaseHomeRepo baseHomeRepo = HomeRepo(HomeRemoteDataSource());
  late final GetAddressesUc getAddressesUc = GetAddressesUc(baseHomeRepo);
  late final GetCategoriesUc getCategoriesUc = GetCategoriesUc(baseHomeRepo);
  late final GetDealsUc getDealsUc = GetDealsUc(baseHomeRepo);
  late final GetOffersUc getOffersUc = GetOffersUc(baseHomeRepo);

  bool _isLoading = false;

  //get list of addresses, categories, deals and offers
  _initFun() async{
    setState(() {
      _isLoading = true;
    });
    final addressesResult = await getAddressesUc.call();
    addressesResult.fold((l) => null, (r) {
      addresses = r;
    });
    final categoriesResult = await getCategoriesUc.call();
    categoriesResult.fold((l) => null, (r) {
      categories = r;
    });
    final dealsResult = await getDealsUc.call();
    dealsResult.fold((l) => null, (r) {
      deals = r;
    });
    final offersResult = await getOffersUc.call();
    offersResult.fold((l) => null, (r) {
      offers = r;
    });
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _initFun();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return GeneralTitleWidget(
      title: 'Oxford Street',
      widget: _isLoading?
      Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
        ),
      ):
      Flexible(
        child: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: ListView(
            children: [
              padding(),
              const HomeSearchWidget(), padding(),
              HomeAddressListWidget(addresses: addresses), padding(),
              HomeCategoriesWidget(categories: categories), padding(),
              HomeDealsListWidget(deals: deals), padding(),
              HomeOffersListWidget(offers: offers)
            ],
          ),
        ),
      ),
    );
  }
}

Widget padding() => const Padding(padding: EdgeInsets.only(top: 26));

