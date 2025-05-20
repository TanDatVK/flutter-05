import 'dart:io';

void main() {
  print("Nhập họ tên nhân viên: ");
  String hoTen = stdin.readLineSync().toString();
  print("Nhập số giờ đã làm việc: ");
  int soGioLamViec = int.parse(stdin.readLineSync().toString());
  print("Nhập lương mỗi giờ: ");
  double luongMoiGio = double.parse(stdin.readLineSync().toString());

  double tongLuong = soGioLamViec * luongMoiGio;

  if (soGioLamViec > 40) tongLuong += tongLuong * 0.2;

  double thueThuNhap = 0;
  if (tongLuong > 10000000) {
    thueThuNhap = tongLuong * 0.1;
  } else if (tongLuong > 7000000) {
    thueThuNhap = tongLuong * 0.05;
  }

  double luongThucLanh = tongLuong - thueThuNhap;
  print("Họ tên nhân viên: $hoTen");
  print("Tổng lương: $tongLuong");
  print("Thuế thu nhập: $thueThuNhap");
  print("Lương thực lãnh: $luongThucLanh");
}
