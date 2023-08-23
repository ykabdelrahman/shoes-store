import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'all_categories.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, size: 16.sp),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 8.sp),
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined, size: 16.sp),
            color: Colors.black,
          ),
        ],
        bottom: TabBar(
          tabs: const [
            Text(
              'All',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Men',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Women',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Kids',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          labelColor: Colors.purple,
          unselectedLabelColor: Colors.grey,
          labelPadding: const EdgeInsets.all(6),
          indicatorColor: Colors.purple,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          AllCategories(),
          AllCategories(),
          AllCategories(),
          AllCategories(),
        ],
      ),
    );
  }
}
