import 'package:flutter_test/flutter_test.dart';

import 'package:package/package.dart';

void main() {
  test('Is valid sign in information', () {
    final validators = Validators();
    expect(validators.isValidEmail('zhiwen.wang@epitech.eu'), true);
    expect(validators.isValidEmail('zhiwen.wang.epitech.eu'), false);
    expect(validators.isValidPassword('123456'), true);
    expect(validators.isValidPassword('bad'), false);
  });

  test('Is valid sign up information', () {
    final validators = Validators();
    expect(validators.isValidName('zhiwen'), true);
    expect(validators.isValidName('1234'), false);
    expect(validators.isValidEmail('zhiwen.wang@epitech.eu'), true);
    expect(validators.isValidEmail('zhiwen.wang.epitech.eu'), false);
    expect(validators.isValidPassword('123456'), true);
    expect(validators.isValidPassword('bad'), false);
  });
}
