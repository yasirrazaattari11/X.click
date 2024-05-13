import 'package:flutter/material.dart';
import 'package:i_xlick/Widgets/custom_fields.dart';
class CustomAppbar extends StatelessWidget {
  Widget? widget;
  double? padding;
  CustomAppbar({this.widget,this.padding});

  @override
  Widget build(BuildContext context) {
    return
       Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            children: [
              Expanded(
                child: CustomTextFields(keyboardType: TextInputType.text, labelText: 'Search', obscureText: false, sizeAll: 15,widget2: Container(
                  child: Image.asset('assets/image/Search.png'),
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(left: padding!),
                child: widget
              )
            ],
          ),
        ),
      );
  }
}
