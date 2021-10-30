import 'package:bai2/bai2.dart' as bai2;

void main(List<String> arguments) {
  int demChiaHetCho3 = 0;
  int demChiaHetCho5 = 0;
  for (int i = 1; i <= 10000; i++) {
    if (i % 3 == 0) {
      demChiaHetCho3++;
    }
  }
  print("==>có $demChiaHetCho3  chữ số chia hết cho 3\n");
  for (int i = 1; i <= 10000; i++) {
    if (i % 5 == 0) {
      demChiaHetCho5++;
    }
  }
  print("==>có $demChiaHetCho5 chữ số chia hết cho 5\n");
}
