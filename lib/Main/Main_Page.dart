import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spaceng_app/DetailsPage/Details_page.dart';
//import 'package:spaceng_app/Main/category.dart';
import 'package:spaceng_app/Main/constants.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 70, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/icons/menu (1).svg"),
                Image.asset(""),
              ],
            ),
            SizedBox(height: 30),
            Text("Hello Chris!,", style: kHeadingextStyle),
            Text("Let's help you find your dream office space",
                style: kSubheadingextStyle),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 16),
                  Text(
                    "Search for space",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Spaces",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "See more",
                    style: kSubtitleTextStyle.copyWith(color: kBlueColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return DetailsPage();
                    },
                    ),
                  );
                },
                child: StaggeredGridView.countBuilder(
                  padding: EdgeInsets.all(0),
                  crossAxisCount: 2,
                  itemCount: 20,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 150,
                      color: Colors.deepPurple,
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
