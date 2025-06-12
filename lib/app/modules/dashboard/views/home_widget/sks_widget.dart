import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:student_portal/app/utils/ext/size_ext.dart';
import 'package:student_portal/app/utils/helper/style_helper.dart';

class SksWidget extends StatelessWidget {
  const SksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => (),
      child: Container(
        height: 190,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(220, 255, 255, 255),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Color.fromARGB(140, 255, 3, 154),
              ),
              padding: EdgeInsets.all(5),
              width: 100.h(context),
              child: Text(
                "SKS",
                style: text(context).bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: CircularPercentIndicator(
                  radius: 40,
                  lineWidth: 10,
                  animation: true,
                  percent: 0.83,
                  center: Text(
                    "83%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.orange,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "120",
                    style: text(context)
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text("of 144 SKS")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
