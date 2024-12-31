import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/user_profile/password_manager.dart';
import 'package:learning_app/utils/constants/colors.dart';
import '../utils/constants/global.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: size.titleFontsize, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.tbutton_hei,
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: newprimaryColor,
              ),
              title: Text(
                "Notification Settings",
                style: TextStyle(fontSize: size.subtitleFontsize),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          InkWell(
            onTap:
               () => Get.to(PasswordManager(),
                  transition: Transition.rightToLeft),

            child: ListTile(
              leading: Icon(
                Icons.key,
                color: newprimaryColor,
              ),
              title: Text(
                " Password Manager",
                style: TextStyle(fontSize: size.subtitleFontsize),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              bottom();
            },
            child: ListTile(
              leading: Icon(
                Icons.delete,
                color: newprimaryColor,
              ),
              title: Text(
                "Delete Account ",
                style: TextStyle(fontSize: size.subtitleFontsize),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void bottom() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.tradius_medi),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.smallSizeBox,
                ),
                Container(
                  height: 10,
                  width: 40,
                  decoration: BoxDecoration(
                      color: newprimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: size.smallSizeBox,
                ),
                Text(
                  "Delete Account",
                  style: TextStyle(
                      fontSize: size.subtitleFontsize,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: size.mediumSizeBox,
                ),
                Text("Are you sure? you"),
                SizedBox(
                  height: size.smallSizeBox,
                ),
                Text("want to delete account?"),
                SizedBox(height: size.largeSizeBox),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            size.tradius_large,
                          ),
                          border: Border.all(width: 1, color: newprimaryColor)),
                      child: Center(
                        child: Text(
                          "Cancle",
                          style: TextStyle(color: newprimaryColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            size.tradius_large,
                          ),
                          color: newprimaryColor),
                      child: Center(
                        child: Text(
                          "Yes Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
