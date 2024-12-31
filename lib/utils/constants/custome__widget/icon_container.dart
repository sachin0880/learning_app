import 'package:flutter/cupertino.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/custome__widget/ttcustom_iconcontainer.dart';


import '../global.dart';



class icon_container extends StatelessWidget {
  const icon_container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TtcustomIconcontainer(height: 50,width: MediaQuery.of(context).size.width*0.27,color: white,
            radius: size.tradius_small, child: Image(image: AssetImage("assets/images/apple.png"),)),
        TtcustomIconcontainer(height: 50,width: MediaQuery.of(context).size.width*0.27,color: white,
            radius: size.tradius_small, child: Image(image: AssetImage("assets/images/google_icon.png"),)),
        TtcustomIconcontainer(height: 50,width: MediaQuery.of(context).size.width*0.27,color: white,
            radius: size.tradius_small, child: Image(image: AssetImage("assets/images/fbicon.png"),)),

      ],
    );
  }
}
