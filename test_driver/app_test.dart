// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Authentication Integration', () {
    final firstNameField = find.byValueKey('FirstName');
    final lastNameField = find.byValueKey('LastName');
    final phoneNumberField = find.byValueKey('PhoneNumber');
    final emailAddressField = find.byValueKey('EmailAddress');
    final passwordField = find.byValueKey('Password');
    final passwordREField = find.byValueKey('PasswordRE');

    final navToOnboarding = find.byValueKey('NavToOnBoardButton');
    final navToSignUpButton = find.byValueKey('NavToSignUpButton');
    final signUpButton = find.byValueKey('SignUpButton');
    // final navToLogInButton = find.byValueKey('NavToLoginButton');
    // final logInButton = find.byValueKey('LoginButton');

    final alertDialog = find.byValueKey('AlertDialog');

    final SerializableFinder pv = find.byValueKey('InitialPageView');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Create Existing User', () async {
      await driver.waitFor(pv);
      await driver.scroll(pv, -250, 0, Duration(milliseconds: 300));
      await driver.scroll(pv, -250, 0, Duration(milliseconds: 300));
      await driver.scroll(pv, -250, 0, Duration(milliseconds: 300));
      await driver.tap(navToOnboarding);
      await driver.tap(navToSignUpButton);
      await driver.tap(firstNameField);
      await driver.enterText("TESTFIRSTNAME");

      await driver.tap(lastNameField);
      await driver.enterText("TESTLASTNAME");

      await driver.tap(phoneNumberField);
      await driver.enterText("1231231234");

      await driver.tap(emailAddressField);
      await driver.enterText("someEmail@gmail.com");

      await driver.tap(passwordField);
      await driver.enterText("passwordpassword");

      await driver.tap(passwordREField);
      await driver.enterText("passwordpassword");

      await driver.tap(signUpButton);

      await driver.waitFor(alertDialog);
      //expect(async driver.getTexalertDialog. == "Email address already in use");
    });
  });
}
