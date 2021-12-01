import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter_glow/flutter_glow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;

  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expandable(
                primaryWidget: Container(
                  height: 30,
                  child: Center(
                    child: Text("Hello World"),
                  ),
                ),
                secondaryWidget: Container(
                  height: 45,
                  child: Center(
                    child: Column(
                      children: [
                        Text("Hello"),
                        Text("Hello"),
                      ],
                    ),
                  ),
                ),
                backgroundColor: Colors.grey.withOpacity(0.4),
                showArrowIcon: true,
                padding: EdgeInsets.all(5.0),
                centralizePrimaryWidget: true,
              ),
              Expandable.extended(
                elevation: 10,
                centralizePrimaryWidget: false,
                arrowWidget: Icon(Icons.favorite),
                arrowLocation: ArrowLocation.left,
                additionalWidget: Text("Show me"),
                primaryWidget: Container(
                  height: 30,
                  child: Center(child: Text("Important Summury")),
                ),
                secondaryWidget: Container(
                  height: 70,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("More"),
                        Text("Deliels"),
                        Text("About"),
                        Text("Something"),
                      ],
                    ),
                  ),
                ),
              ),
              GlowButton(
                  color: Colors.lime, child: Text("Glow"), onPressed: () {}),
              SizedBox(height: 32),
              GlowCheckbox(
                  height: 45,
                  width: 50,
                  glowColor: Colors.teal,
                  value: checkboxSelected,
                  onChange: (val) {
                    setState(() {
                      checkboxSelected = !checkboxSelected;
                    });
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
