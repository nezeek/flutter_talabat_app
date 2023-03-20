import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/saraa%20folder/component/resturant_info.dart';

import 'component/resturant_appbar.dart';


class ResturantPage extends StatefulWidget {
  const ResturantPage({super.key});

  @override
  State<ResturantPage> createState() => _ResturantPageState();
}

class _ResturantPageState extends State<ResturantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body:
      CustomScrollView(
        slivers: [
          RestaruntAppBar(),
          SliverToBoxAdapter(
            child: ResturantInfo()
          ),
        ],
      )
    );
  }
}
