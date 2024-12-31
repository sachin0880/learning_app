import 'package:flutter/cupertino.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/custom_widget/ttcustom_container.dart';

import '../constants/global.dart';

class icon_container extends StatelessWidget {
  const icon_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TtcustomIconcontainer(height: 60,width: MediaQuery.of(context).size.width*0.27,color: white,
            padding: EdgeInsets.symmetric(vertical: 10),
            radius: size.tradius_small, child: Image(image: AssetImage("assets/icon/apple_icon-removebg-preview (1).png"),fit: BoxFit.contain,)),
        TtcustomIconcontainer(padding: EdgeInsets.symmetric(vertical: 10),
            height: 60,width: MediaQuery.of(context).size.width*0.27,color: white,
            radius: size.tradius_small, child: Image(image: AssetImage("assets/icon/gogle_icon-removebg-preview.png"),)),
        TtcustomIconcontainer(padding: EdgeInsets.symmetric(vertical: 2,horizontal: 15),
            height: 60,width: MediaQuery.of(context).size.width*0.27,color: white,
            radius: size.tradius_small, child: Image(image: AssetImage("assets/icon/facebook_icon-removebg-preview (1).png"),fit: BoxFit.fill,)),

      ],
    );
  }
}

