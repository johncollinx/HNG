import 'package:flutter/material.dart';
import 'package:portfolio_app/components/contact_form.dart';
import 'package:portfolio_app/components/footer.dart';
import 'package:portfolio_app/components/header1.dart';
import 'package:portfolio_app/components/home_page_actions.dart';
import 'package:portfolio_app/components/more_about_me.dart';
import 'package:portfolio_app/components/my_drawer.dart';
import 'package:portfolio_app/components/recent_projects.dart';
import 'package:portfolio_app/components/social_icons_bar.dart';
import 'package:portfolio_app/components/top_skills.dart';
import 'package:portfolio_app/utils.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'JANE DOE',
          style: TextStyle(
            fontSize: 22,
            color: Color(0xFF4756DF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 66,
        elevation: 2,
        actions: [
          Utils.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xFf4756DF),
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(
                  sc: myScrollController,
                ),
        ],
      ),
      endDrawer: Utils.isMobile(context)
          ? MyDrawer(
              sc: myScrollController,
            )
          : null,
      floatingActionButton: FloatingActionButton(
        mini: Utils.isMobile(context) ? true : false,
        onPressed: () {
          myScrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeIn,
          );
        },
        child: Image.network(
          'https://eager-williams-af0d00.netlify.app/assets/icons/icons8-upward-arrow.gif',
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: myScrollController,
              child: Column(
                children: const [
                  Header1(),
                  MoreAboutMe(),
                  SizedBox(height: 50),
                  TopSkills(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  ContactForm(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            const SocialIconsBar(),
          ],
        ),
      ),
    );
  }
}
