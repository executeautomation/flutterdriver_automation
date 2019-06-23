import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

class ISeeValue extends Then1WithWorld<String, FlutterWorld> {
  ISeeValue()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep(String value) async {
    HomePage homePage = HomePage(world.driver);
    expectMatch(await homePage.getCounterValue(), value);
  }

  @override
  RegExp get pattern => RegExp(r"I see if the value is {string}");
}