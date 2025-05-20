import 'dart:io';

void main() {
  print("Nhập tên sản phẩm: ");
  String tenSanPham = stdin.readLineSync().toString();
  print("Nhập số lượng mua: ");
  int soLuongSanPham = int.parse(stdin.readLineSync().toString());
  print("Nhập đơn giá: ");
  double giaSanPham = double.parse(stdin.readLineSync().toString());

  double tongTien = soLuongSanPham * giaSanPham;
  double giamGia = 0;
  double thue = 0;
  double tongTienThuc = 0;

  if (tongTien >= 1000000) {
    giamGia = tongTien * 0.1;
  } else if (tongTien >= 500000) {
    giamGia = tongTien * 0.05;
  }

  thue = (tongTien - giamGia) * 0.08;
  tongTienThuc = tongTien - (giamGia + thue);
  print("Tên sản phẩm: $tenSanPham");
  print("Số lượng mua: $soLuongSanPham");
  print("Đơn giá: $giaSanPham");

  print("Tổng tiền: $tongTien");
  print("Giảm giá: $giamGia");
  print("Thuế: $thue");
  print("Tổng tiền thực: $tongTienThuc");
}
