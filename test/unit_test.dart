import 'package:flutter_test/flutter_test.dart';
import 'package:prak_testing_debugging/suhu_helper.dart';

void main() {
  test('Konversi 0°C menjadi 32°F', () {
    expect(celciusKeFahrenheit(0), 32);
  });

  test('Melempar error jika suhu di bawah -273.15°C', () {
    expect(() => celciusKeFahrenheit(-300), throwsArgumentError);
  });
}