import 'package:flutter/material.dart';

class Custompages extends StatelessWidget {
  final String imagepath;
  final String mainText;
  final String sybText;
  const Custompages(
      {super.key,
      required this.imagepath,
      required this.mainText,
      required this.sybText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      height: 320,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              offset: Offset(0, 4), // Shadow directly below the container
              blurRadius: 2, // Softness of the shadow
              spreadRadius: 1, // Size of the shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imagepath))),
      child: Stack(
        children: [
          Positioned(
              right: 7,
              top: 21,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 41,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.save,
                    color: Color.fromRGBO(14, 74, 98, 1),
                  ),
                ),
              )),
          Positioned(
            right: 7,
            top: 178,
            child: Container(
              width: 94,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(child: Text(mainText)),
            ),
          ),
          Positioned(
              right: 15,
              top: 209,
              left: 15,
              child: Text(
                sybText,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
                textAlign: TextAlign.right,
              )),
          Positioned(
              top: 268,
              left: 33,
              child: Container(
                height: 5,
                width: 240,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
              ))
        ],
      ),
    );
  }
}
