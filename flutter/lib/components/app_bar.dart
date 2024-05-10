import 'package:flutter/material.dart';

class OwnAppBar extends StatelessWidget {
  const OwnAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height * 0.125,
      color: const Color.fromRGBO(0, 0, 0, 1.0),
      child: Center(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Builder(builder: (context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              margin: EdgeInsets.only(left: (width * 0.27)-10),
              child: Image.asset('lib/images/logo.png'),
            )
          ],
        ),
      ),
    );
  }
}
