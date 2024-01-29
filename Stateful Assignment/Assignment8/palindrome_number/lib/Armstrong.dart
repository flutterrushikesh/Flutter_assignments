  void countArmStrong() {
    int count = 0;
    List<int> numberList = [1, 775, 575, 124, 98789, 565, 781, 999, 496];

    for (int i = 0; i < numberList.length; i++) {
      int temp = numberList[i].abs();
      int armStrong = 0;
      while (temp != 0) {
        int rem = temp % 10;
        armStrong = pow(rem, armStrong).toInt();
        temp = temp ~/ 10;
      }
  
      
    }
  }