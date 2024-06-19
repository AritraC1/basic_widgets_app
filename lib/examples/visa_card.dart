import 'package:basic_widgets_app/examples/content.dart';
import 'package:basic_widgets_app/utils/colors.dart';
import 'package:flutter/material.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          // color: Colors.amber,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows,
          ),
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,

          child: Content(),
        ),
      ),
    );
  }
}
