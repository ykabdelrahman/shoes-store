import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
//import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
            /*style: GoogleFonts.aladin(
            textStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
          ),*/
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
              ),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
              color: Colors.black,
            ),
          ],
        ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 55,
                padding: const EdgeInsets.only(top: 3),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(17))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.search),
                    Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(left: 5),
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
              const SizedBox(
                height: 60,
                child: Center(
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
