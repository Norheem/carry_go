import 'package:carry_go/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestItemTile extends StatelessWidget {
  final String title;
  final String number;
  final String task;
  final color;
  final IconData? iconData;
  final Color? iconColor;
  final double? iconSize;
  const RequestItemTile({
    super.key,
    required this.title,
    required this.number,
    required this.task,
    this.color,
    this.iconData,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 20,
                top: 30,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: AppColors.dark,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        number,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: AppColors.dark,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        task,
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: AppColors.dark,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Container(
                      //   width: 20,
                      //   height: 20,
                      //   decoration: const BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     color: Colors.white,
                      //   ),
                      //   child: Icon(iconData),
                      // ),
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        radius: 13,
                        child: Icon(
                          iconData,
                          color: iconColor,
                          size: iconSize,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
