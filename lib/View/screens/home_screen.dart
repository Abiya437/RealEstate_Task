import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/home_screen_body.dart';
import '../widgets/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Buy';
  int _selectedIndex = 0;
  bool _isContainerVisible = true;

  void onDropdownChanged(String? newValue) {
    if (newValue != null) {
      setState(() {
        dropdownValue = newValue;
      });
    }
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _closeContainer() {
    setState(() {
      _isContainerVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double horizontalPadding = screenWidth * 0.06;
    double verticalPadding = screenHeight * 0.05;

    return Scaffold(
      body: HomeScreenBody(
        horizontalPadding: horizontalPadding,
        verticalPadding: verticalPadding,
        dropdownValue: dropdownValue,
        onDropdownChanged: onDropdownChanged,
        screenWidth: screenWidth,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_isContainerVisible)
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  color: const Color(0XFFE6E9FF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/review.png'),
                      const SizedBox(width: 20),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CustomTextStyle(
                                text: 'See Reviews & Ratings',
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(width: 18),
                              Icon(
                                Icons.arrow_forward,
                                size: 18,
                              ),
                            ],
                          ),
                          CustomTextStyle(
                            text:
                                'Localities & societies reviewed by residents',
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF585555),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: -0,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 24,
                      color: Colors.black,
                    ),
                    onPressed: _closeContainer,
                  ),
                ),
              ],
            ),
          ConvexAppBar(
            initialActiveIndex: _selectedIndex,
            style: TabStyle.react,
            backgroundColor: const Color(0XFF2A2F5F),
            items: [
              TabItem(
                icon: SvgPicture.asset(
                  'assets/icons/home1.svg',
                ),
                title: 'Home',
              ),
              TabItem(
                icon: SvgPicture.asset(
                  'assets/icons/saved.svg',
                  width: 24,
                  height: 24,
                ),
                title: 'Saved',
              ),
              TabItem(
                icon: SvgPicture.asset(
                  'assets/icons/enquiry.svg',
                ),
                title: 'Enquiry',
              ),
              TabItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                ),
                title: 'Profile',
              ),
            ],
            onTap: _onTabTapped,

          ),
        ],
      ),
    );
  }
}