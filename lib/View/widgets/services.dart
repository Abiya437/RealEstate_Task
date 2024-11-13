import 'package:flutter/material.dart';
import 'package:task_realestate/View/widgets/text_widget.dart';

class ServicesForYou extends StatelessWidget {
  final List<String> images;
  final List<String> texts;

  const ServicesForYou({super.key, required this.images, required this.texts});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerSize = screenWidth * 0.15;

    return Stack(
      children: [
        Card(
          color: Colors.white,
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 0.9,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: containerSize,
                          height: containerSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.shade50,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              images[index],
                              // fit: BoxFit.cover,
                              width: containerSize,
                              height: containerSize,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Flexible(
                          child: CustomTextStyle(
                            text: texts[index],
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: const Color(0XFF3B3B3B),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}



class CustomCardContent extends StatelessWidget {
  const CustomCardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomTextStyle(
          text: 'Pay Your Rent & Bills',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        const SizedBox(height: 9),
        const CustomTextStyle(
          text: '& Earn up to £30k!',
          fontSize: 8,
          fontWeight: FontWeight.w400,
          color: Color(0XFF7C7C7C),
        ),
        const SizedBox(height: 11),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2A2F5F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const CustomTextStyle(
            text: 'Pay Now',
            fontSize: 8,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 11),
        const CustomTextStyle(
          text: 'Safe secure Quick',
          fontSize: 5,
          fontWeight: FontWeight.w400,
          color: Color(0XFF5E5C5C),
        ),
      ],
    );
  }
}


class CustomCardImage extends StatelessWidget {
  const CustomCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -20,
      right: -20,
      child: Image.asset(
        'assets/legal.png',
        height: 150,
        width: 150,
      ),
    );
  }
}


class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            elevation: 4,
            margin: const EdgeInsets.only(right: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 250,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: SizedBox(
                      width: 80,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/card2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CustomTextStyle(
                            text: 'New York, North Yorkshire',
                            fontSize: 7,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Center(
                          child: CustomTextStyle(
                            text: 'For sale, 1-3 beds',
                            fontSize: 7,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



class RentAndBillsCard extends StatelessWidget {
  const RentAndBillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white,
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.all(17.0),
          child: RentAndBillsContent(),
        ),
      ),
    );
  }
}

class RentAndBillsContent extends StatelessWidget {
  const RentAndBillsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyle(
                  text: 'Pay Your Rent & Bills',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                SizedBox(height: 9),
                CustomTextStyle(
                  text: '& Earn up to £30k!',
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF7C7C7C),
                ),
                SizedBox(height: 11),
                PayNowButton(),
                SizedBox(height: 11),
                CustomTextStyle(
                  text: 'Safe secure Quick',
                  fontSize: 5,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF5E5C5C),
                ),
              ],
            ),
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                'assets/legal.png',
                height: 150,
                width: 150,
              ),
            ),
          ],
        );
      },
    );
  }
}

class PayNowButton extends StatelessWidget {
  const PayNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF2A2F5F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: const CustomTextStyle(
        text: 'Pay Now',
        fontSize: 8,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}