import 'package:flutter/material.dart';
import 'package:opentalk/src/widget.dart/customButton.dart';
import 'package:opentalk/src/widget.dart/sizeText.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: size.width * 0.4,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.025),
                  child: TitleText(text: 'ยินดีต้อนรับสู่ OPENTALK'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.05),
                  child: ContentText(text: 'พบ พูดคุย และแลกเปลี่ยนข้อมูลข่าวสารกับกลุ่มเพื่อนที่ชอบอะไรเหมือนๆ กัน'),
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.15,
            child: Center(
              child: CustomButton(text: 'เข้าสู่ระบบ'),
            ),
          )
        ],
      )
    );
  }
}