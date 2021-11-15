<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Flutter II Package

Epitech Scool project, the goal is to create a package that can be used in another project

## Features

Validators
- isName(String str) : If name contains only letters, return true, otherwise false

- isEmail(String str) : If email contains '@', return true, otherwise false

- isPasswordStrong(String str) : If password length < 8 and contains uppercase letter and one digit, return true, otherwise true

- isAlphanumeric(String str) : If string contains letters or/and digits, return true, otherwise false

- isAlpha(String str) : If string contains only letters, return true, otherwise false

- isNum(String str) : If string contains only digits, return true, otherwise false

- isUppercase(String str) : If string is uppercase, return true, otherwise false

- isLowercase(String str) : If string is lowercase, return true, otherwise false

## Getting started

In terminal type :

```
flutter pub get flutteriipackage
```

## Usage

```
import 'package:flutter_pkg/flutter_pkg.dart';

final validator = Validators();
validator.isValidEmail('test@test.com');
```
## Test
```
flutter test test/package_test.dart
```
