import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:quiz_app/dummydb/dummydb.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';
import 'package:quiz_app/view/image_constant/imageconstant.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hey , John',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            Text(
              'lets make this productive',
              style:
                  TextStyle(fontSize: 15, color: Colors.white.withOpacity(.5)),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              ImageConstant.EMOJI,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 100,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(.7)),
              child: Row(
                children: [
                  Icon(
                    BoxIcons.bx_trophy,
                    size: 40,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Text(
                        'Ranking',
                        style: GoogleFonts.yuseiMagic(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ),
                      Text(
                        '45',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    height: 375,
                    width: 1,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    BoxIcons.bxs_coin_stack,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    children: [
                      Text(
                        'Points',
                        style: GoogleFonts.yuseiMagic(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ),
                      Text(
                        '1209',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.blue,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Lets Play',
              style: GoogleFonts.aoboshiOne(
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: GridView.builder(
              itemCount: 6,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 2),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Image.asset(
                        Dummydb.CategoryList[index]['image'],
                        height: 120,
                        width: 100,
                      ),
                      Text(Dummydb.CategoryList[index]['category'],
                          style: GoogleFonts.abhayaLibre(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30))),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
