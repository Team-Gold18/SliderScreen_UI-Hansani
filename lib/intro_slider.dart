//import 'dart:core';
//import 'dart:core';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'home.dart';

class IntroSliderPage extends StatefulWidget {
  @override
  _IntroSliderPageState createState() => _IntroSliderPageState();
}

class _IntroSliderPageState extends State<IntroSliderPage> {
  List<Slide> slides = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides.add(new Slide(
      title: 'Hello Food!',
      description: 'The esiest way to order food from your favorite resturant!!',
      pathImage: 'assets/images/hamburger.png',
    ),
    );
    slides.add(new Slide(
      title: 'Movie Tickets!',
      description: 'Book movie tickets for your family and friends!!',
      pathImage: 'assets/images/movie.png',
    ),
    );
    slides.add(new Slide(
      title: 'Great Discounts!',
      description: 'Best discounts on every single service we offer!!',
      pathImage: 'assets/images/discount.png',
    ),
    );
    slides.add(new Slide(
      title: 'World Travel!',
      description: 'Book tickets of any transportation and travel the world!!',
      pathImage: 'assets/images/travel.png',
    ),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Container(
            margin: EdgeInsets.only(bottom: 160, top: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    currentSlide.pathImage.toString(),
                    matchTextDirection: true,
                    height: 60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    currentSlide.title.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Text(
                    currentSlide.description.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      backgroundColorAllSlides: Colors.pinkAccent[700],
      renderSkipBtn: Text("Skip"),
      renderNextBtn: Text(
        "Next",
        style: TextStyle(color: Colors.black),
      ),
      renderDoneBtn: Text(
        "Done",
        style: TextStyle(color: Colors.black),
      ),
      colorDot: Colors.white,
      colorActiveDot: Colors.white,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,
      listCustomTabs: this.renderListCustomTabs(),
      scrollPhysics: BouncingScrollPhysics(),
      hideStatusBar: false,
      onDonePress: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      ),
    );
  }
}
