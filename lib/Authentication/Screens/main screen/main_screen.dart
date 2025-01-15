
import 'package:flutter/material.dart';
import 'package:noise_remover/Authentication/Screens/signup%20screen/signup_screen.dart';
import 'package:noise_remover/utils/constants/colors.dart';
import 'package:noise_remover/utils/constants/texts.dart';
import '../../../utils/constants/images.dart';
import '../login screen/login_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    final double screenHeight=screenSize.height;
    final double screenWidth=screenSize.width;
    TabController tabcontroller= TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xff2A2A2A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(NImages.header))),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      NTexts.welcome,
                      style: TextStyle(fontSize: 55, color: Colors.white,fontFamily: 'Product Sans', fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      NTexts.appName,
                      style: TextStyle(fontSize: 45, color: NColors.primaryColor, fontFamily: 'Orbitron'),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TabBar(
                      controller: tabcontroller,
                      labelStyle: const TextStyle(
                        fontSize: 25,
                      ),
                      isScrollable: false,
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: NColors.primaryColor,
                      tabs: const [
                        Tab(
                          text: NTexts.login,
                        ),
                        Tab(
                          text: NTexts.signup,
                        ),
                      ]),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight,
              width: screenWidth,
              child: TabBarView(
                  controller: tabcontroller,
                  children: const [
                    LoginScreen(),
                    SignUpScreen(),
                  ],
                ),
              ),

          ],
        ),
      ),
    );
  }
}
