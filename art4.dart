import 'package:day15_shoes/Animation/FadeAnimation.dart';
import 'package:day15_shoes/pages/Shoes.dart';
import 'package:day15_shoes/pages/air.dart';
import 'package:day15_shoes/pages/football.dart';
import 'package:day15_shoes/pages/running.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sneakers extends StatefulWidget {
  const Sneakers({super.key});

  @override
  State<Sneakers> createState() => _SneakersState();
}

class _SneakersState extends State<Sneakers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/DECORE YOUR WALLS WITH ART.png"),
                    fit: BoxFit.fill),
                color: Colors.white54,
              ),
              child: const Text(
                "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text(
                "Home",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text(
                "Setting",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.pages,
                color: Colors.black,
              ),
              title: const Text(
                "Products",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "Artworks",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // AspectRatio(
                    //   aspectRatio: 2.2 / 1,
                    //   child: GestureDetector(
                    //     // onTap: () => Get.offAll(HomePage()),
                    //     child: FadeAnimation(
                    //         1,
                    //         Container(
                    //           margin: EdgeInsets.only(right: 10),
                    //           child: Center(
                    //             child: Text(
                    //               "All",
                    //               style: TextStyle(fontSize: 20),
                    //             ),
                    //           ),
                    //         )),
                    //   ),
                    // ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: FadeAnimation(
                            1.1,
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "Sketches",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: GestureDetector(
                        onTap: () => Get.off(() => Football()),
                        child: FadeAnimation(
                            1.2,
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Center(
                                child: Text(
                                  "WaterColor",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.2 / 1,
                      child: GestureDetector(
                        onTap: () => Get.off(() => Running()),
                        child: FadeAnimation(
                            1.3,
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Center(
                                child: Text(
                                  "Canvas",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            )),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 2.5 / 1,
                      child: GestureDetector(
                        onTap: () => Get.off(Air()),
                        child: FadeAnimation(
                            1.4,
                            Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Center(
                                child: Text(
                                  "Charcoal",
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  1.1,
                  makeItem(
                      image: 'assets/images/S7.jpg',
                      tag: 'Sneakers1',
                      context: context,
                      name: "",
                      price: 600)),
              FadeAnimation(
                1.2,
                Text(
                  "Graphite Suga Sketch",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff666464),
                  ),
                ),
              ),
              SizedBox(height: 20),
              FadeAnimation(
                  1.2,
                  makeItem(
                      image: 'assets/images/S2.jpg',
                      tag: 'Sneakers2',
                      context: context,
                      name: "",
                      price: 500)),
              Text(
                "Krishna Sketch",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff666464),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              FadeAnimation(
                  1.3,
                  makeItem(
                      image: 'assets/images/S3.jpg',
                      tag: 'Sneakers3',
                      context: context,
                      name: "",
                      price: 650)),
              Text(
                "Graphite Baby Sketch",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff666464),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              FadeAnimation(
                  1.4,
                  makeItem(
                      image: 'assets/images/S5.jpg',
                      tag: 'Sneakers4',
                      context: context,
                      name: "",
                      price: 600)),
              Text(
                "Graphite Women Sketch",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff666464),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context, name, price}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Shoes(
                        image: image,
                      )));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400]!,
                    blurRadius: 10,
                    offset: Offset(0, 10))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        FadeAnimation(
                            1.1,
                            Text(
                              name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ],
                    ),
                  ),
                  // FadeAnimation(
                  //     1.2,
                  //     Container(
                  //       width: 35,
                  //       height: 35,
                  //       decoration: BoxDecoration(
                  //           shape: BoxShape.circle, color: Colors.white),
                  //       child: Center(
                  //         child: Icon(
                  //           Icons.favorite_border,
                  //           size: 20,
                  //         ),
                  //       ),
                  //     ))
                ],
              ),
              FadeAnimation(
                  1.2,
                  Text(
                    "$price\Rs",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
