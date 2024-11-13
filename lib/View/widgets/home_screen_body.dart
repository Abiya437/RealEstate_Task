import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_realestate/View/widgets/second_container.dart';
import 'package:task_realestate/View/widgets/text_widget.dart';


class HomeScreenBody extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;
  final String dropdownValue;
  final ValueChanged<String?> onDropdownChanged;
  final double screenWidth;

  const HomeScreenBody({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.dropdownValue,
    required this.onDropdownChanged,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeScreenHeader(
            horizontalPadding: horizontalPadding,
            verticalPadding: verticalPadding,
          ),
          const Center(
            child: CustomTextStyle(
              text: 'Search properties for sale and to rent in the UK',
              fontSize: 9,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          SearchBar(
            horizontalPadding: horizontalPadding,
            dropdownValue: dropdownValue,
            onDropdownChanged: onDropdownChanged,
            screenWidth: screenWidth,
          ),
          const SizedBox(height: 20),
           SecondBottomContainer(),
        ],
      ),
    );
  }
}

class HomeScreenHeader extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;

  const HomeScreenHeader({
    super.key,
    required this.horizontalPadding,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomTextStyle(
            text: 'Find your best\n property',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          SvgPicture.asset(
            'assets/icons/bell.svg',
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final double horizontalPadding;
  final String dropdownValue;
  final ValueChanged<String?> onDropdownChanged;
  final double screenWidth;

  const SearchBar({
    super.key,
    required this.horizontalPadding,
    required this.dropdownValue,
    required this.onDropdownChanged,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: onDropdownChanged ,
              icon: const Icon(Icons.keyboard_arrow_down_sharp,
                  size: 16, color: Color(0Xff5B5B5B)),
              underline: Container(),
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
              items: <String>['Buy', 'Rent', 'Both']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: CustomTextStyle(
                    text: value,
                    fontSize: 8,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF404466),
                  ),
                );
              }).toList(),
            ),
            const VerticalDivider(
              color: Colors.black26,
              thickness: 1,
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search e.g.Oxford or NW3',
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF535353),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SvgPicture.asset('assets/icons/searchbar.svg',
                height: 20, width: 20)
          ],
        ),
      ),
    );
  }
}
