import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.productName,
    required this.price,
    required this.image,
  });
  final String productName;
  final double price;
  final String image;
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color heartColor = kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.4),
                blurRadius: 22,
                spreadRadius: 0,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 12,
                  left: 12,
                  bottom: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.productName,
                          style: TextStyle(
                            fontSize: 10.5.sp,
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${widget.price}',
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ),
        Positioned(
          right: 28,
          bottom: 60,
          child: Image.network(
            widget.image,
            height: 18.h,
            width: 24.w,
          ),
        ),
      ],
    );
  }
}
