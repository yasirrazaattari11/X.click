import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SettingsContainer extends StatelessWidget {
  final String settingtype;
  const SettingsContainer({required this.settingtype});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)),
          color: Colors.grey.withOpacity(0.4)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                settingtype,
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey
              ),
              child: Center(child: Image(image: AssetImage('assets/image/arrowforward.png'))),
            )
          ],
        ),
      ),
    );
  }
}
