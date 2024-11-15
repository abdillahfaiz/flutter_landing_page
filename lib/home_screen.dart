// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web/color.dart';
import 'package:flutter_web/responsive.dart';
import 'package:flutter_web/string_const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const HomeDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        toolbarHeight: kToolbarHeight + 70,
        title: Padding(
          padding: Responsive.isDekstop(context)
              ? const EdgeInsets.symmetric(
                  horizontal: 130,
                )
              : EdgeInsets.zero,
          child: SizedBox(
            height: 45,
            child: Image.asset('logo.png'),
          ),
        ),
        actions: Responsive.isDekstop(context)
            ? [
                const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'Portfolio',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'Contact',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 130,
                )
              ]
            : [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
      ),
      body: const CustomScrollView(
        slivers: [
          HeaderSection(),
          PartnersSection(),
          Body1Section(),
          Body2Section(),
          TeamSection(),
          FooterSection()
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: primaryColor,
        padding: EdgeInsets.symmetric(
            vertical: 50, horizontal: Responsive.isDekstop(context) ? 130 : 20),
        child: Responsive(
            mobile: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('ic_fb.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_ig.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_tweet.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_pinterest.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_tiktok.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_wa.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_yt.svg'),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text("© Start, 2024. All rights reserved",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('ic_fb.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_ig.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_tweet.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_pinterest.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_tiktok.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_wa.svg'),
                    const SizedBox(
                      width: 20.0,
                    ),
                    SvgPicture.asset('ic_yt.svg'),
                  ],
                ),
                const Text("© Start, 2024. All rights reserved",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            )),
      ),
    );
  }
}

class TeamSection extends StatelessWidget {
  const TeamSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:  EdgeInsets.only(right: Responsive.isDekstop(context) ? 130 : 20, left: Responsive.isDekstop(context) ? 130 : 20, top: 30, bottom: 54),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            const Text(
              "TEAM",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Our Talents",
              style: TextStyle(
                fontSize: Responsive.isDekstop(context) ? 40 : 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Lorem ipsum, dolor sit amet consectetur\n Suscipit nemo hic quos, ab,",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 55.0,
            ),
            const Responsive(
                mobile: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MemberCardItem(
                      name: "Peg Legge",
                      svg: 'member1.svg',
                      role: "CEO",
                    ),
                    MemberCardItem(
                      name: "Richard Guerra",
                      svg: 'member2.svg',
                      role: "CTO",
                    ),
                    MemberCardItem(
                      name: "Alexandra Stolz",
                      svg: 'member3.svg',
                      role: "DESIGNER",
                    ),
                    MemberCardItem(
                      name: "Janet Bray",
                      svg: 'member4.svg',
                      role: "DEVELOPER",
                    ),
                  ],
                ),
                desktop: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MemberCardItem(
                      name: "Peg Legge",
                      svg: 'member1.svg',
                      role: "CEO",
                    ),
                    MemberCardItem(
                      name: "Richard Guerra",
                      svg: 'member2.svg',
                      role: "CTO",
                    ),
                    MemberCardItem(
                      name: "Alexandra Stolz",
                      svg: 'member3.svg',
                      role: "DESIGNER",
                    ),
                    MemberCardItem(
                      name: "Janet Bray",
                      svg: 'member4.svg',
                      role: "DEVELOPER",
                    ),
                  ],
                )),
            const SizedBox(
              height: 45.0,
            ),
            SizedBox(
              width: 170,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xff212529)),
                ),
                child: const Text(
                  "View Team",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MemberCardItem extends StatelessWidget {
  const MemberCardItem({
    super.key,
    required this.svg,
    required this.name,
    required this.role,
  });

  final String svg;
  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
        child: Column(
          children: [
            SvgPicture.asset(svg),
            const SizedBox(
              height: 19.0,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 17.0,
            ),
            Text(
              role,
              style: const TextStyle(
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Body2Section extends StatelessWidget {
  const Body2Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
           padding:  EdgeInsets.symmetric(horizontal: Responsive.isDekstop(context) ? 130 : 20),

      sliver: SliverToBoxAdapter(
        child: Responsive(
            mobile: Column(
              children: [
                SvgPicture.asset('illu_2.svg'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lorem ipsum dolor sit amet sonsectetur",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      StringConst.loremIpsum,
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff212529).withOpacity(0.5)),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: 170,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xff212529)),
                        ),
                        child: const Text(
                          "Learn More",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            desktop: Row(
              children: [
                Expanded(child: SvgPicture.asset('illu_2.svg')),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lorem ipsum dolor sit amet sonsectetur",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        StringConst.loremIpsum,
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff212529).withOpacity(0.5)),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: 170,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xff212529)),
                          ),
                          child: const Text(
                            "Learn More",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            )),
      ),
    );
  }
}

class Body1Section extends StatelessWidget {
  const Body1Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:  EdgeInsets.symmetric(horizontal: Responsive.isDekstop(context) ? 130 : 20),
      sliver: SliverToBoxAdapter(
        child: Responsive(
            mobile: Column(
              children: [
                SvgPicture.asset('illu_1.svg'),
                const SizedBox(
                  height: 30.0,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lorem ipsum dolor sit amet sonsectetur",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      StringConst.loremIpsum,
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color(0xff212529).withOpacity(0.5)),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: 170,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xff212529)),
                        ),
                        child: const Text(
                          "Learn More",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            desktop: Row(
              children: [
                Expanded(child: SvgPicture.asset('illu_1.svg')),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Lorem ipsum dolor sit amet sonsectetur",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        StringConst.loremIpsum,
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff212529).withOpacity(0.5)),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      SizedBox(
                        width: 170,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xff212529)),
                          ),
                          child: const Text(
                            "Learn More",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            )),
      ),
    );
  }
}

class PartnersSection extends StatelessWidget {
  const PartnersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding:  EdgeInsets.only(
        top: 60,
        bottom: 73,
        right: Responsive.isDekstop(context) ? 130 : 20,
        left: Responsive.isDekstop(context) ? 130 : 20,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            const Text(
              "PARTNERS",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Lorem Ipsum Dolor",
              style: TextStyle(
                fontSize: Responsive.isDekstop(context) ? 40 : 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              "Lorem ipsum, dolor sit amet consectetur\nadipisicing elit",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 55.0,
            ),
            Responsive(
                mobile: Column(
                  children: [
                    SvgPicture.asset('google.svg'),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SvgPicture.asset('microsoft.svg'),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SvgPicture.asset('airbnb.svg'),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SvgPicture.asset('facebook.svg'),
                    const SizedBox(
                      height: 40.0,
                    ),
                    SvgPicture.asset('spotify.svg'),
                  ],
                ),
                desktop: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('google.svg'),
                    SvgPicture.asset('microsoft.svg'),
                    SvgPicture.asset('airbnb.svg'),
                    SvgPicture.asset('facebook.svg'),
                    SvgPicture.asset('spotify.svg'),
                  ],
                )),
            const SizedBox(
              height: 55.0,
            ),
            SizedBox(
              width: 170,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all(const Color(0xff212529)),
                ),
                child: const Text(
                  "Learn More",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: Responsive.isDekstop(context)
            ? const EdgeInsets.only(
                bottom: 82,
              )
            : const EdgeInsets.only(
                bottom: 40,
              ),
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Responsive.isDekstop(context) ? 130 : 20),
          child: Responsive.isDekstop(context)
              ? Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 120),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'WELCOME',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet consectetur",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            const Text(
                              StringConst.loremIpsum,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Explore",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SvgPicture.asset('header.svg'),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    SvgPicture.asset('header.svg'),
                    const Text(
                      'WELCOME',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet consectetur",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      StringConst.loremIpsum,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
        ),
      ),
    );
  }
}
