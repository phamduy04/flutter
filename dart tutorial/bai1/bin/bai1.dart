import 'package:bai1/bai1.dart' as bai1;

void main(List<String> arguments) {
  int sum = 0;
  print("các số chẵn mà tổng các số đó không lớn hơn 400 là:");
  for (int i = 1; i <= 1000; i++) {
    sum += i;
    if (sum <= 400 && sum % 2 == 0) {
      print("$sum\t");
    }
  }
}
