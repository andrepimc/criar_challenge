import 'package:criar_challenge/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class TableCellWidget extends StatelessWidget {
  final String label;
  final bool isTitle;
  final bool weakLabel;
  const TableCellWidget(
      {super.key,
      required this.label,
      this.isTitle = false,
      this.weakLabel = false});

  @override
  Widget build(BuildContext context) {
    return TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              label,
              style: isTitle
                  ? AppTextStyles.tableCeilTitleLabel
                  : AppTextStyles.tableCeilLabel.copyWith(
                      color: weakLabel ? Colors.grey.shade400 : Colors.white),
            ),
          ),
        ));
  }
}
