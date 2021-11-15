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
- IsValidName(String str) : If name contains only digits, return false, otherwise true
- IsValidEmail(String str) : If email doesn't contains '@', return false, otherwise true
- IsValidPassword(String str) : If name length <= 4, return false, otherwise true

## Getting started

In terminal type :

flutter pub get flutteriipackage

## Usage

import 'package:flutter_pkg/flutter_pkg.dart';

final validator = Validators();
validator.isValidEmail('test@test.com');

