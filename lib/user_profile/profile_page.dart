import 'package:flutter/material.dart';
import 'package:learning_app/user_profile/contect_us.dart';
import 'package:learning_app/user_profile/help_center.dart';
import 'package:learning_app/user_profile/payment_method.dart';
import 'package:learning_app/user_profile/setting.dart';
import 'package:learning_app/user_profile/widget_c/widget_profile.dart';
import 'package:learning_app/user_status/sign_screen.dart';
import 'package:learning_app/utils/constants/colors.dart';
import '../utils/constants/global.dart';
import 'edit_profile.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: newprimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(size.tradius_large),
                  bottomLeft: Radius.circular(size.tradius_large),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: size.tbutton_hei,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.titleFontsize,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: size.largeSizeBox,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/icon/gogle_icon-removebg-preview.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: size.smallSizeBox,
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.titleFontsize,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => EditProfile()));
                },
                child:
                    WidgetProfile(icon: Icons.person, title: 'Edit profile')),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PaymentMethod()));
                },
                child: WidgetProfile(
                    icon: Icons.wallet, title: 'Payment methods')),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Setting()));
                },
                child: WidgetProfile(icon: Icons.settings, title: 'Settings')),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => HelpCenter()));
                },
                child: WidgetProfile(
                    icon: Icons.info_outline, title: 'Help center')),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => EditProfile()));
              },
              child: WidgetProfile(
                  icon: Icons.description_outlined, title: 'Term & condition'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => EditProfile()));
              },
              child: SizedBox(
                height: size.largeSizeBox,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => EditProfile()));
              },
              child: WidgetProfile(
                  icon: Icons.description_sharp, title: 'Prevacy Policy'),
            ),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ContectUs()));
                },
                child: WidgetProfile(icon: Icons.person, title: 'Contect us')),
            SizedBox(
              height: size.largeSizeBox,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => SignScreen()),
                      (route) => false);
                },
                child:
                    WidgetProfile(icon: Icons.logout_rounded, title: 'LogOut'))
          ],
        ),
      ),
    );
  }
}
