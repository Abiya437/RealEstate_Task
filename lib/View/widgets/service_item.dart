import 'package:flutter/material.dart';
import 'package:task_realestate/View/widgets/text_widget.dart';

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? discountText;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.label,
    this.discountText,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerSize = screenWidth * 0.18;

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: containerSize,
              height: containerSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF1A2F5D),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child:
              Icon(
                icon,
                size: containerSize * 0.5,
                color: Colors.white,
              ),
            ),
            if (discountText != null)
              Positioned(
                bottom: 5,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF7B941),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: CustomTextStyle(
                    text: discountText!,
                    fontSize: 4,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        CustomTextStyle(
          text: label,
          fontSize: 6,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ],
    );
  }
}
