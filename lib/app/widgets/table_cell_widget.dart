import 'package:flutter/material.dart';

class TableCellWidget extends StatelessWidget {
  const TableCellWidget(this.value,
      {this.isHeader, this.isLeft, this.isBlocked, super.key});
  final dynamic value;
  final bool? isHeader;
  final bool? isLeft;
  final bool? isBlocked;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
      color: isBlocked == false ? Colors.black : null,
      child: Text(
        value?.toString() ?? "",
        textAlign: isLeft == true ? TextAlign.left : TextAlign.center,
        style: TextStyle(
          fontWeight: isHeader == true ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
