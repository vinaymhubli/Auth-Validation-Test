import 'package:emailtest/auth_class.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Email Verification', () {
    test('email validation for empty', () {
      //Arrange & Act
      var res = Authentication.emailAuth("");
      //Assert
      expect(res, "Required Field");
    });

    test("email verified", () {
      //Arrange & Act
      var res = Authentication.emailAuth("vinayhubli.m@gmail.com");

      //Assert
      expect(res, 'Email verified');
    });

    test("Wrong email id", () {
      //Arrange & Act
      var res = Authentication.emailAuth('email');
      //Assert
      expect(res, 'Enter a valid email id');
    });
  });

  group('Password Verification', () {
    test('password validation for empty', () {
      //Arrange & Act
      var res = Authentication.passwordAuth("");
      //Assert
      expect(res, "Required Password");
    });

    test('invalid password', () {
      //Arrange & Act
      var res = Authentication.passwordAuth('pv');

      //Assert
      expect(res, "Enter valid password");
    });

    test('Valid Password', () {
      //Arange & Act
      var res = Authentication.passwordAuth('password');
      //Assert
      expect(res, 'Password verified');
    });
  });
}
