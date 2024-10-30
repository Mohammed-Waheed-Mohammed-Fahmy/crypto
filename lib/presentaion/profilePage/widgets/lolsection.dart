import 'package:app/presentaion/profilePage/widgets/lolWidget.dart';
import 'package:flutter/material.dart';

class Lolsection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            buildMenuItem(
              icon: Icons.fingerprint,
              text: 'تغيير كلمة المرور',
              onTap: () {},
            ),
            buildMenuItem(
              icon: Icons.info,
              text: 'طلب المساعدة',
              onTap: () {},
            ),
            buildMenuItem(
              icon: Icons.phone,
              text: 'اتصل بنا',
              onTap: () {},
            ),
            buildMenuItem(
              icon: Icons.security,
              text: 'الشروط والأحكام',
              onTap: () {},
            ),
            buildMenuItem(
              icon: Icons.exit_to_app,
              text: 'تسجيل خروج',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
