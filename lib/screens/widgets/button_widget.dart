import 'package:criar_challenge/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool loading;
  const ButtonWidget(
      {super.key,
      required this.label,
      required this.onTap,
      required this.loading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          width: 244,
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange.withOpacity(0.15),
                  spreadRadius: 5,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: loading
                  ? const SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      label,
                      style: AppTextStyles.buttonLabel,
                    )),
        ),
      ),
    );
  }
}
