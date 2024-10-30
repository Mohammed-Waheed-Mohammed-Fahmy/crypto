import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buildMenuItem extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function()? onTap;
  buildMenuItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.chevron_left, color: Colors.black54),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: GoogleFonts.cairo(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(width: 10),
          Icon(
            icon,
            color: Colors.black,
            size: 32,
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
