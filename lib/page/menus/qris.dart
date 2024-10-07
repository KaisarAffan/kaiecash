import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Bindings/bindings.dart';
import 'package:kaiecash/page/Component%20Page/payment_page.dart';
import 'package:kaiecash/page/controller/payment_controller.dart';

class QrisMenu extends StatelessWidget {
  const QrisMenu({super.key});
  Future<List<CameraDescription>> _getCameras() async {
    WidgetsFlutterBinding.ensureInitialized();
    return await availableCameras();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CameraDescription>>(
      future: _getCameras(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData && snapshot.data!.isNotEmpty) {
            return Scanner(cameras: snapshot.data!);
          } else {
            return const Center(child: Text('No cameras available'));
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class Scanner extends StatefulWidget {
  final List<CameraDescription> cameras;
  const Scanner({super.key, required this.cameras});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  final PaymentController paymentController = Get.find();

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.cameras[0],
      ResolutionPreset.high,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.205),
      body: Column(
        children: [
          Container(
            color: Color(0xFF6482AD),
          ),
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_controller);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6482AD),
        onPressed: () async {
          paymentController.goToPayment("Bayar", paymentController.saldo.value);
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
