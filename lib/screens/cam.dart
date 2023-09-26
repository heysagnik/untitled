import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:ocr_scan_text/ocr_scan_text.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late CameraController _cameraController;
  OcrResult _ocrResult;
  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  void _initCamera() async {
    final cameras = await availableCameras();
    final camera = cameras.first;
    _cameraController = CameraController(
      camera,
      ResolutionPreset.high,
    );
    await _cameraController.initialize();
  }

  void _scanCard() async {
    final image = await _cameraController.takePicture();
    final ocrResult = await Ocr.scan(image);
    setState(() {
      _ocrResult = ocrResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            CameraPreview(_cameraController),
            FloatingActionButton(
              onPressed: _scanCard,
              child: const Text('Scan Card'),
            ),
            if (_ocrResult != null) Text(_ocrResult.text),
          ],
        ),
      ),
    );
  }
}
