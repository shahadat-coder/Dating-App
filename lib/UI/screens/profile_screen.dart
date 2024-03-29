import 'package:dating_app/Component/circle_button_title.dart';
import 'package:dating_app/utils/constants/colors.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.bottom,
              list: [
                BezierCurveSection(
                  start: Offset(0, (size.height * 0.7) - 50),
                  top: Offset(size.width / 2, size.height * 0.7),
                  end: Offset(size.width, (size.height * 0.7) - 50),
                )
              ],
            ),
            child: Container(
              height: size.height * 0.7,
              width: size.width,
              color: white,
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: defaultPadding * 3,
                      ),
                      Container(
                        height: 140,
                        width: 140,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(profileUrl),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            username,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            age,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: defaultSmallPadding,
                          ),
                          Icon(
                            CupertinoIcons.checkmark_alt_circle_fill,
                            color: primary,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: defaultMediumPadding,
                      ),
                      const Text(location),
                      const SizedBox(
                        height: defaultPadding * 2,
                      ),
                      SizedBox(
                        height: 150,
                        child: Row(
                          children: [
                            SizedBox(
                              width: (size.width - 40) / 3,
                              child: CircleButtonTitle(
                                title: "Setting",
                                icon: Icon(
                                  Icons.settings,
                                  color: black.withOpacity(0.4),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 100,
                                width: (size.width - 40) / 3,
                                child: const CircleButtonTitle(
                                  title: "Add Media",
                                  bgColor: primary,
                                  icon: Icon(
                                    Icons.camera_alt,
                                    color: white,
                                  ),
                                  hasSubIcon: true,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: (size.width - 40) / 3,
                              child: CircleButtonTitle(
                                title: "Edit Info",
                                icon: Icon(
                                  Icons.edit,
                                  color: black.withOpacity(0.4),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
