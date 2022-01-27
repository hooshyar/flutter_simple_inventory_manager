import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScan {
  Future<String> readBarcode() async {
    return await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", false, ScanMode.DEFAULT);
  }
}
