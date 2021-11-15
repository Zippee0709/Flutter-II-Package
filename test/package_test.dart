import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ii_package_epitech_zhiwen/package.dart';

void main() {
  test('Is valid sign in information', () {
    final validators = Validators();
    expect(validators.isEmail('zhiwen.wang@epitech.eu'), true);
    expect(validators.isEmail('zhiwen.wang.epitech.eu'), false);
    expect(validators.isPasswordStrong('Test0123'), true);
    expect(validators.isPasswordStrong('bad'), false);
  });

  test('Is valid sign up information', () {
    final validators = Validators();
    expect(validators.isName('zhiwen'), true);
    expect(validators.isName('1234'), false);
    expect(validators.isEmail('zhiwen.wang@epitech.eu'), true);
    expect(validators.isEmail('zhiwen.wang.epitech.eu'), false);
    expect(validators.isPasswordStrong('Test0123'), true);
    expect(validators.isPasswordStrong('bad'), false);
  });
  test('Is alpha numeric', () {
    final validators = Validators();
    expect(validators.isAlphanumeric('zhiwen'), true);
    expect(validators.isAlphanumeric('zhiwen1'), true);
    expect(validators.isAlphanumeric('))))(((('), false);
  });

  test('Is alpha', () {
    final validators = Validators();
    expect(validators.isAlpha('zhiwen'), true);
    expect(validators.isAlpha('012345'), false);
    expect(validators.isAlpha('zhiwen01'), false);
  });

  test('Is numeric', () {
    final validators = Validators();
    expect(validators.isNum('012345'), true);
    expect(validators.isNum('zhiwen'), false);
    expect(validators.isNum('zhiwen01'), false);
  });

  test('Is equals', () {
    final validators = Validators();
    expect(validators.isEquals('1', 1), true);
    expect(validators.isEquals('zhiwen', 'zhiwen'), true);
    expect(validators.isEquals('zhiwen', 'zhiwen1'), false);
  });

  test('Is uppercase', () {
    final validators = Validators();
    expect(validators.isUppercase('ZHIWEN'), true);
    expect(validators.isUppercase('zhiwen'), false);
    expect(validators.isLowercase('Zhiwen'), false);
  });

  test('Is lowercase', () {
    final validators = Validators();
    expect(validators.isLowercase('zhiwen'), true);
    expect(validators.isLowercase('ZHIWEN'), false);
    expect(validators.isLowercase('Zhiwen'), false);
  });
}
