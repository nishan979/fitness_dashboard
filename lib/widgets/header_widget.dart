import 'package:fitness_dashboard/const/constant.dart';
import 'package:fitness_dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isLargeScreen(context))
          // Padding(
          //   padding: const EdgeInsets.only(right: 20),
          //   child: InkWell(
          //     onTap: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //     child: Padding(
          //       padding: const EdgeInsets.all(4.0),
          //       child: Icon(
          //         Icons.menu,
          //         color: Colors.grey,
          //         size: 25,
          //       ),
          //     ),
          //   ),
          // ),

        Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
            icon: const Icon(Icons.menu, color: Colors.grey, size: 25),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        if (!Responsive.isMobile(context))  
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBackgroundColor,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              hintText: 'Search',
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 21,
              ),
            ),
          ),
        ),
        if (Responsive.isMobile(context))
          Row(
            children: [
              IconButton(onPressed: () {},
          icon: const Icon(Icons.search, color: Colors.grey, size: 25),
          ),
          InkWell(
            onTap: () => Scaffold.of(context).openEndDrawer(),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset("assets/image/avatar.png", width: 32,),
              
            ),
          )
            ],
          )
          
      ],
    );
  }
}
