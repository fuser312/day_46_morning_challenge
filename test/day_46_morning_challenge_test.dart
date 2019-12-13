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
  expect(burstBalloonsIndex([2,4,6,8,10], 4), 480);
  expect(burstBalloonsIndex([4, 8, 9, 11, 6, 5], 3), 792);
  expect(burstBalloonsIndex([5], 1), 0);
  expect(burstBalloonsIndex([2,4,], 2), 8);
  });

  test("Test Case 3", (){
    expect(maximumCoins([8,5,3,6]), 320);
    expect(maximumCoins([3,1,5,8]), 167);
  });
}
