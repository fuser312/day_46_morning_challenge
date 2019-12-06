import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(distributeCandies(7,4),[1,2,3,1]);
    expect(distributeCandies(28,5),[7,9,3,4,5]);
    expect(distributeCandies(10,4), [1,2,3,4]);
    expect(distributeCandies(0,4), [0,0,0,0]);
  });
  test('Test Case 2', () {

  });
}
