import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day15_shoes/pages/sneakers.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({Key? key}) : super(key: key);

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController sizeController =
      TextEditingController(); // New controller for size
  final TextEditingController priceController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    sizeController.dispose(); // Dispose the size controller
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "BuyPage",
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
                  fit: BoxFit.fill,
                ),
                color: Colors.white54,
              ),
              child: const Text(
                "",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => Get.offAll(() => Sneakers()),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text(
                "Setting",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
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
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter your name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: sizeController, // Use sizeController for artwork size
              decoration: InputDecoration(
                labelText: "Enter Artwork Size",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                labelText: "Enter the price of Artwork",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                String name = nameController.text;
                String size =
                    sizeController.text; // Get text from sizeController
                String price = priceController.text;

                try {
                  await FirebaseFirestore.instance
                      .collection('artgallery')
                      .add({
                    'name': name,
                    'size': size,
                    'price': price,
                  });
                  print('Data submitted successfully!');
                  // You can add any additional logic or UI updates here
                } catch (e) {
                  print('Error submitting data: $e');
                  // Handle any errors that occur during data submission
                }
              },
              child: Text("submit"),
            ),
          ],
        ),
      ),
    );
  }
}
