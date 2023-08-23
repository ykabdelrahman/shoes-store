import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants.dart';

class CustomCategoryCard extends StatefulWidget {
  const CustomCategoryCard({
    super.key,
    required this.categoryName,
    required this.image,
  });
  final String categoryName;
  final String image;
  @override
  State<CustomCategoryCard> createState() => _CustomCategoryCardState();
}

class _CustomCategoryCardState extends State<CustomCategoryCard> {
  Color heartColor = kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.sp),
      child: SizedBox(
        height: 18.h,
        width: 80.w,
        child: Card(
          color: const Color(0xffF2E7E3),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.sp),
                child: Text(
                  widget.categoryName,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.sp),
                child: Image.network(
                  widget.image,
                  height: 20.h,
                  width: 22.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
