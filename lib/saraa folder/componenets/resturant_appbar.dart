import 'package:flutter/material.dart';
import 'package:flutter_talabat_app/nezik/myscreen.dart';

class ResturantAppbar extends StatelessWidget {
  const ResturantAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(//app bar that is designed to be used in a CustomScrollView.
      expandedHeight: 130,
      pinned: true,
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          "https://images.creativemarket.com/0.1.0/ps/4758723/910/607/m2/fpnw/wm1/g4kguyfx49repfpogj8st1b7g9xg30syyjvriutskzh42yxoevzsgpne2tp9zqju-.jpg?1531658312&s=b382e41671115a33356c1d66755b7430",
          fit: BoxFit.cover,
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(onPressed: (){
     Navigator.push(context,
      MaterialPageRoute(builder: (context)=> homescreen())); },
      icon: Icon(Icons.arrow_back,color: Colors.black,)),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.share,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.search,
                color: Colors.black,
              )),
        )
      ],
    );
  }
}
