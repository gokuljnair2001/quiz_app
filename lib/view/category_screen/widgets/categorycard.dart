import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryCard extends StatelessWidget {
  const categoryCard({
    super.key, required this.image, required this.title, this.onGridTap,
  });

  final String image;
    final String title;
    final void Function()? onGridTap; 


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onGridTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 120,
              width: 100,
            ),
            Text(title,
                style: GoogleFonts.abhayaLibre(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 30))),
          ],
        ),
      ),
    );
  }
}
