import 'package:flutter/material.dart';
import 'package:flutter_simple_inventory_manager/src/services/barcode_service.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  _HomeScreenViewState createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  TextEditingController _textController = TextEditingController();
  String _barcodeString = 'the barcode';
  final BarcodeScan _scanner = BarcodeScan();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                child: Text('Scan Barcode'),
                onPressed: () async {
                  _barcodeString = await _scanner.readBarcode();
                },
              ))),
    );
  }
}
