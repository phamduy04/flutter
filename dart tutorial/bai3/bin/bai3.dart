import 'package:bai3/bai3.dart' as bai3;

void main(List<String> arguments) {
  int sum = 0;
  List<int> list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  print("tổng các số chia hết cho 3 là:");
  for (int number in list5) {
    sum += number;
    if (sum % 3 == 0) {
      print("$sum");
    }
  }
}
