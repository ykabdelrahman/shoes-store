import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
            /*style: GoogleFonts.aladin(
            textStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
          ),*/
          ),
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: const [
            Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            SizedBox(
              width: 12,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        drawer: Drawer(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 55,
                padding: EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(17))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.search),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Search here .. ",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Row(children: [
                      Text(
                        'Our Latest Products',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_circle_down_rounded,
                        size: 35,
                        color: Colors.black,
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
