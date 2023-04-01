import 'package:flutter/material.dart';
import '../componenets/resturant_appbar.dart';
import '../componenets/resturant_card.dart';
import '../componenets/resturant_categories.dart';
import '../componenets/resturant_info.dart';
import '../componenets/resturant_menu_category.dart';

import '../models/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollController = ScrollController();

  int selectedCategoryIndex = 0;

  double resturantInfoHeight = 200 + 170 - kToolbarHeight;

  @override
  void initState() {
    createBreakpoints();
    scrollController.addListener(() {
      updateCategoryIndexOnScroll(scrollController.offset);
    });
    super.initState();
  }

  void scrollToCategory(int index) {
    if (selectedCategoryIndex != index) {
      int totalItems = 0;

      for (var i = 0; i < index; i++) {
        totalItems += demoCategoryMenus[i].items.length;
      }
      scrollController.animateTo(
        resturantInfoHeight + (116 * totalItems) + (50 * index),
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      setState(() {
        selectedCategoryIndex = index;
      });
    }
  }

  List<double> breackPoints = [];
  void createBreakpoints() {
    double firstBreakPoint =
        resturantInfoHeight + 50 + (116 * demoCategoryMenus[0].items.length);

    breackPoints.add(firstBreakPoint);

    for (var i = 1; i < demoCategoryMenus.length; i++) {
      double breakPoint =
          breackPoints.last + 50 + (116 * demoCategoryMenus[i].items.length);
      breackPoints.add(breakPoint);
    }

  }
    void updateCategoryIndexOnScroll(double offset) {
      for (var i = 0; i < demoCategoryMenus.length; i++) {
        if (i == 0) {
          if ((offset < breackPoints.first) & (selectedCategoryIndex != 0)) {
            setState(() {
              selectedCategoryIndex = 0;
            });
          }
        } else if ((breackPoints[i - 1] <= offset) &
            (offset < breackPoints[i])) {
          if (selectedCategoryIndex != i) {
            setState(() {
              selectedCategoryIndex = i;
            });
          }
        }
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      controller: scrollController,
      slivers: [
        ResturantAppbar(),
        SliverToBoxAdapter(//to connect nonscroll to scroll
          child: ResturantInfo(),
        ),
        SliverPersistentHeader(
          delegate: Categories(
              onChanged: scrollToCategory,
              selectedIndex: selectedCategoryIndex),
          pinned: true,
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, CategoryIndex) {
          List<Menu> items = demoCategoryMenus[CategoryIndex].items;
          return MenuCategoryItem(
              title: demoCategoryMenus[CategoryIndex].category,
              items: List.generate(
                  items.length,
                  (index) => MenuCard(
                      title: items[index].title,
                      image: items[index].image,
                      price: items[index].price,
                      description: items[index].description)));
        }, childCount: demoCategoryMenus.length))
      ],
    ));
  }
  
}
