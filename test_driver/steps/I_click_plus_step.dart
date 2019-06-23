import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

class ClickPlus extends AndWithWorld<FlutterWorld> {
  ClickPlus()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    await homePage.clickBtnPlus();
  }

  @override
  RegExp get pattern => RegExp(r"I click the plus button");
}