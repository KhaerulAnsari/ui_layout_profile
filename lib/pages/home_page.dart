import 'package:flutter/material.dart';
import 'package:ui_layout_profile/theme.dart';
import 'package:ui_layout_profile/widgets/item_image.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Profile Picture",
                  style: TextStyle(
                    fontSize: 20,
                    color: primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/primary.png",
                  width: 140,
                  height: 140,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Khaerul Ansari",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: primary,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Wrap(
                  spacing: 38,
                  runSpacing: 40,
                  children: <Widget>[
                    ItemImage(imageAsset: "assets/images/item1.png"),
                    ItemImage(imageAsset: "assets/images/item2.png"),
                    ItemImage(imageAsset: "assets/images/item3.png"),
                    ItemImage(imageAsset: "assets/images/item4.png"),
                    ItemImage(imageAsset: "assets/images/item5.png"),
                    ItemImage(imageAsset: "assets/images/item6.png")
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: 224,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 290,
                              padding: EdgeInsets.symmetric(vertical: 50),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Update Photo",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: primary),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "You are only able to change\nthe picture profile once",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: greyColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    height: 55,
                                    width: 224,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: orangeColor,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Text("Continu",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Colors.white,
                    child: Text(
                      "Update Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: primary,
                      ),
                    ),
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  height: 76,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
