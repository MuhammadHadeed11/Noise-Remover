import 'package:flutter/material.dart';
import 'package:noise_remover/Authentication/Screens/signup_screen.dart';
import 'package:noise_remover/utils/constants/colors.dart';
import 'package:noise_remover/utils/constants/texts.dart';
import '../../utils/constants/images.dart';
import 'login_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontroller= TabController(length: 2, vsync: this);
    return Scaffold(
        backgroundColor: const Color(0xff2A2A2A),
        body: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 50),
                        height: 202,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                alignment: Alignment.topCenter,
                                image: AssetImage(NImages.header))),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                NTexts.welcome,
                                style: TextStyle(fontSize: 55, color: Colors.white,fontFamily: 'Product Sans', fontWeight: FontWeight.w500),
                              ),
                              Text(
                                NTexts.appName,
                                style: TextStyle(fontSize: 45, color: NColors.primaryColor, fontFamily: 'Orbitron'),
                              ),
                              SizedBox(height: 30,),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        child:
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
                      ),

                      Flexible(
                        child: TabBarView(
                          controller: tabcontroller,
                          children: const [
                            LoginScreen(),
                            SignupScreen(),
                          ],
                        ),
                      ),

                    ],
                  ),
    );
  }
}
