import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/saraa%20folder/componenets/resturant_card.dart';


class MenuCategoryItem extends StatelessWidget {
  final String title;
  final List<MenuCard> items;

  const MenuCategoryItem({Key? key, required this.title, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(margin: EdgeInsets.only(top: 30), child: Text(title)),
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: items[index],
          ),
        ),
      ],
    );
  }
}
