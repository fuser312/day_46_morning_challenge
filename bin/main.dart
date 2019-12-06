// Distribute Candies to People
// We distribute some number of candies, to a row of n = num_people people in the following way:
//
// We then give 1 candy to the first person, 2 candies to the second person,
// and so on until we give n candies to the last person.
//
// Then, we go back to the start of the row, giving n + 1 candies to the first
// person, n + 2 candies to the second person, and so on until we give 2 * n candies to the last person.
//
//This process repeats (with us giving one more candy each time, and moving to
// the start of the row after we reach the end) until we run out of candies.
// The last person will receive all of our remaining candies (not necessarily one more than the previous gift).
//
//  Return an list (of length num_people and sum candies) that represents the
// final distribution of candies.
// Example
// Input: candies = 7, num_people = 4
//  Output: [1,2,3,1]

List<int>distributeCandies(int candies, int people){
  int i = 0;
  int loops = 0;
  List <int> outputList = List<int>.generate(people, (i) => 0);
  while(candies > 0){
    if(i == people){
      i = 0;
      loops++;
    }
    int currentCandy = (loops * people) + (i + 1);
    if(candies - currentCandy < 0){
      outputList[i] = outputList[i] + candies;
    }
    else{
      outputList[i] = (outputList[i]+currentCandy);
    }
    i++;
    candies = candies - currentCandy;
  }
  return outputList;
}

List outputList = [];


// Challenge 2
// Burst Balloons
// Given n balloons, indexed from 0 to n-1. Each balloon is painted with a number
// on it represented by array nums. You are asked to burst all the balloons.
// If the you burst balloon i you will get nums[left] * nums[i] * nums[right] coins.
// Here left and right are adjacent indices of i. After the burst, the left and
// right then becomes adjacent.
//
//  Find the maximum coins you can collect by bursting the balloons wisely.

// Stage 1
// Write a function which calculates total coins earned by bursting a balloon at index 'i'

// Stage 2
// Implement the algorithm to calculate the maximum coins that can be earned.

int burstBalloonsIndex(List<int> ballonList, int index){

    if(ballonList.isEmpty){
      return 0;
    }
    else if(ballonList.length == 1){
      return 0;
    }
    else {
      int left = index - 1 < 0 ? 1 : ballonList[index - 2];
      int right = index + 1 > ballonList.length  ? 1 : ballonList[index];
      return ballonList[index-1] * left * right;
    }


}

main() {
  print(burstBalloonsIndex([2,4,6,8,10], 4));
  print(distributeCandies(7, 5));
}
