import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterrr_swiperrr/MDdata.dart';

import 'nameshame.dart';

void main() {
  runApp(MaterialApp(
    home: persInfo(),
  ));
}

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List ima = [
    "Assets/spl.png",
    "Assets/spl.png",
    "Assets/spl.png",
  ];
  MDdata data = MDdata();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Swiper"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 90),
          Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                height: MediaQuery.of(context).size.width * 1,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 1,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Image.asset(
                            ima[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    );
                  },
                  itemWidth: 300,
                  layout: SwiperLayout.STACK,
                  itemCount: 3,
                  /*pagination: const SwiperPagination(),
                  control: const SwiperControl(),*/
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
