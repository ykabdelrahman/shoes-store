import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:itistore/constants.dart';
import 'package:itistore/views/widgets/custom_text_field.dart';
import 'package:itistore/views/widgets/drawer.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Stream<QuerySnapshot> productsStream = FirebaseFirestore.instance
      .collection('products')
      .orderBy('id')
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 8.sp),
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined, size: 16.sp),
            color: Colors.black,
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: SizedBox(
        width: 75.w,
        child: const Drawer(
          child: CustomDrawer(),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: productsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Something went wrong'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: kPrimaryColor),
            );
          }

          return ListView(
            children: [
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.sp),
                child: const CustomTextFormField(
                  iconn: Icons.search,
                  hint: 'Search for a product...',
                ),
              ),
              SizedBox(height: 12.h),
              GridView(
                padding: EdgeInsets.only(
                  right: 6.sp,
                  left: 6.sp,
                  bottom: 12.sp,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 40.sp,
                ),
                clipBehavior: Clip.none,
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return CustomCard(
                    productName: data['productName'],
                    price: data['price'],
                    image: data['image'],
                    onTap: () {},
                  );
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
