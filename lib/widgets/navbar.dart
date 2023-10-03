import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: MobileNavBar(),
        desktop: DesktopNavBar(),
        tablet: TabletNavBar(),
    );
  }
  //================ Mobile UI =========================
  Widget MobileNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon((Icons.menu)),
          navLogo()
        ],
      ),
    );
  }

  //================ Tablet UI =========================
  Widget TabletNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Skills'),
              navButton('Projects'),
            ],
          ),
          Container(
            height: 40,
            child: ElevatedButton(
                style: borderedButtonStyle,
                onPressed: (){},
                child: const Text('Contact',
                    style: TextStyle(color: Colors.brown))),
          )
        ],
      ),
    );
  }

  //================ Desktop UI =========================
  Widget DesktopNavBar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Skills'),
              navButton('Projects'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: (){},
              child: const Text('Contact',
                  style: TextStyle(color: Colors.brown))),
          )
        ],
      ),
    );
  }
  Widget navButton(String text){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: (){}, child: Text(text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18
      ),),),
    );
  }
  Widget navLogo(){
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/logo.png'))
      ),
    );
  }
}
