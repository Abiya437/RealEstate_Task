import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_realestate/View/widgets/service_item.dart';
import 'package:task_realestate/View/widgets/services.dart';
import 'package:task_realestate/View/widgets/text_widget.dart';

class SecondBottomContainer extends StatelessWidget {
  SecondBottomContainer({super.key});

  final List<String> images = [
    'assets/loan 1.png',
    'assets/agreement 1.png',
    'assets/mortgage 1.png',
    'assets/air-conditioner 1.png',
    'assets/renovation 1.png',
    'assets/agreement (1) 1.png',
  ];

  final List<String> texts = [
    'Home\n Loan',
    '   Sale\nAgreement',
    'Refer &\n Earn',
    '  Legal\nServices',
    '  Home\nRenovation',
    'AC Service \n  & Repair',
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/recent.svg',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 8),
                        const CustomTextStyle(
                          text: 'RECENT SEARCHES',
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF3B3B3B),
                        ),
                        Expanded(child: Container()),
                        const CustomTextStyle(
                          text: 'Clear',
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF3B3B3B),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const HorizontalListView(),
                    const SizedBox(height: 20),
                    const CustomTextStyle(
                      text: 'SERVICES FOR YOU',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF3B3B3B),
                    ),
                    const SizedBox(height: 10),
                    ServicesForYou(images: images, texts: texts),
                    const SizedBox(height: 20),
                    const CustomTextStyle(
                      text: 'AGENTS',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF3B3B3B),
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset('assets/icons/ag.svg'),
                          const CustomTextStyle(
                            text: 'Request property valuation',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF464956),
                          ),
                          SvgPicture.asset('assets/icons/Vector.svg'),
                          Image.asset(
                            'assets/agents.png',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextStyle(
                      text: 'LEGAL SERVICES',
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF3B3B3B),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          color: const Color(0xFFF1F8FF),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 12),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              double availableWidth = constraints.maxWidth;
                              double itemWidth = availableWidth / 4;

                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const ServiceItem(
                                    icon: Icons.description,
                                    label: '  Rental \nAgreement',
                                  ),
                                  const ServiceItem(
                                    icon: Icons.verified_user,
                                    label: '   Tenant \nVerification',
                                    discountText: 'Flat 25% off',
                                  ),
                                  const ServiceItem(
                                    icon: Icons.article,
                                    label: '     Sale\nAgreement',
                                  ),
                                  const ServiceItem(
                                    icon: Icons.shield,
                                    label: 'Property Legal \n   Service',
                                  ),
                                ].map((item) {
                                  return ConstrainedBox(
                                    constraints:
                                        BoxConstraints(maxWidth: itemWidth),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: item,
                                    ),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const RentAndBillsCard(),
                    const SizedBox(height: 38),
                    Card(
                      color: Colors.white,
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomTextStyle(
                              text: 'Need Assistance?',
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            Row(
                              children: [
                                const CustomTextStyle(
                                  text: 'We are just a call away!',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF535353),
                                ),
                                const SizedBox(width: 10),
                                const CustomTextStyle(
                                  text: '(+44 7653254678)',
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF535353),
                                ),
                                const SizedBox(width: 20),
                                Image.asset(
                                  'assets/call.png',
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/gr.png',
                                  // height: 80,
                                  // width: 80,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}