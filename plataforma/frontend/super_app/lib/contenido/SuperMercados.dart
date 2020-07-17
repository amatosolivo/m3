import 'package:flutter/material.dart';
import 'package:superapp/widgets/search_bar.dart';

class superMercados extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supper App',
      home: market(),
    );
  }
}

class market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .25,
            decoration: BoxDecoration(
              color: Color(0xFFC2F2DA),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                  ),
                  Text(
                    "SuperMercados",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                  SearchBar(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
